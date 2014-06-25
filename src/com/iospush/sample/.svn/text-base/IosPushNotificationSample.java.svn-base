package com.iospush.sample;

import org.apache.log4j.Logger;

import com.baidu.yun.channel.auth.ChannelKeyPair;
import com.baidu.yun.channel.client.BaiduChannelClient;
import com.baidu.yun.channel.exception.ChannelClientException;
import com.baidu.yun.channel.exception.ChannelServerException;
import com.baidu.yun.channel.model.PushUnicastMessageRequest;
import com.baidu.yun.channel.model.PushUnicastMessageResponse;
import com.baidu.yun.core.log.YunLogEvent;
import com.baidu.yun.core.log.YunLogHandler;
import com.system.util.BeanUtil;
import com.system.util.JsonUtil;

public class IosPushNotificationSample {
	private static Logger logger = Logger.getLogger(IosPushNotificationSample.class);
	
	/**
	 * 推送消息至ISO
	 * @param mobileChannelId 手机端channelId
	 * @param mobileUserId 手机端userId
	 * @param pushMsg 推送的消息内容
	 * @param userCode 登录用户账号
	 * @return true 成功 false 失败
	 */
	public static boolean pushIosInformation(String mobileChannelId, String mobileUserId, String pushMsg, String userCode){
		boolean bool = false;
		if(BeanUtil.isNotBlank(mobileChannelId) && BeanUtil.isNotBlank(mobileUserId) && BeanUtil.isNotBlank(pushMsg) && BeanUtil.isNotBlank(userCode)){
			long channelId = Long.parseLong(mobileChannelId);
			System.out.println("mobileChannelId........................................"+mobileChannelId);
			System.out.println("mobileUserId........................................"+mobileUserId);
			System.out.println("userCode........................................"+userCode);
			System.out.println("pushMsg........................................"+pushMsg);
			/*045904 13774250055
	         * @brief 推送单播通知(IOS APNS) message_type = 1 (默认为0)
	         */
	        // 1. 设置developer平台的ApiKey/SecretKey 谢永俊的账号
	        String apiKey = "3N1FYHS67hSHzjN8tPzGTCRX";
	        String secretKey = "y8HNq3tmB2hGE7XDkjOAGaF6wzBpGfzb";
	        
	        ChannelKeyPair pair = new ChannelKeyPair(apiKey, secretKey);

	        // 2. 创建BaiduChannelClient对象实例
	        BaiduChannelClient channelClient = new BaiduChannelClient(pair);

	        // 3. 若要了解交互细节，请注册YunLogHandler类
	        channelClient.setChannelLogHandler(new YunLogHandler() {
	            @Override
	            public void onHandle(YunLogEvent event) {
	                System.out.println(event.getMessage());
	            }
	        });

	        try {
	            // 4. 创建请求类对象
	            // 手机端的ChannelId， 手机端的UserId， 先用1111111111111代替，用户需替换为自己的
	            PushUnicastMessageRequest request = new PushUnicastMessageRequest();
	            request.setDeviceType(4); // device_type => 1: web 2: pc 3:android 4:ios 5:wp
	            request.setDeployStatus(2); // DeployStatus => 1: Developer 2: Production
	            request.setChannelId(channelId);
	            request.setUserId(mobileUserId);

	            request.setMessageType(1);
	            String message = "{\"aps\":{\"alert\":\""+pushMsg+"\",\"sound\":\"\",\"badge\":1}}";
	            request.setMessage(message);

	            logger.info("推送消息："+JsonUtil.beanToJsonObject(request));
	            System.out.println("推送消息："+JsonUtil.beanToJsonObject(request));
	            // 5. 调用pushMessage接口
	            PushUnicastMessageResponse response = channelClient.pushUnicastMessage(request);

	            // 6. 认证推送成功
	            int successAmount = response.getSuccessAmount();
	            System.out.println("push amount : " + successAmount);
	            
	            if(successAmount == 1){
	            	bool = true;
	            }

	        } catch (ChannelClientException e) {
	            // 处理客户端错误异常
	            e.printStackTrace();
	            logger.debug("推送消息 处理客户端错误异常"+e);
	        } catch (ChannelServerException e) {
	            // 处理服务端错误异常
	            System.out.println(String.format(
	                    "request_id: %d, error_code: %d, error_message: %s",
	                    e.getRequestId(), e.getErrorCode(), e.getErrorMsg()));
	            logger.debug("推送消息 处理客户端错误异常"+e);
	        }
		}else{
			System.out.println("channelId 或者 userId 或者 jsonMsg 存在空值 无法推送消息至iso。。。。。。");
			logger.info("推送消息 channelId 或者 userId 或者 jsonMsg 存在空值 无法推送消息至iso。。。。。。");
		}
		
		return bool;
	}

    public static void main(String[] args) {
    	//5752344995640204569 989046063632689871
    	//5139412440450672099 848664831358494672
    	String mobileChannelId = "5139412440450672099";
    	String mobileUserId = "848664831358494672";
    	String pushMsg = "发送任务测试";
    	String userCode = "admin";
    	pushIosInformation(mobileChannelId, mobileUserId, pushMsg, userCode);
    }

}
