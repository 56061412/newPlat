package com.system.dao;

import java.io.Serializable;
import java.util.List;

import com.system.common.SqlID;

public abstract interface Dao
{
  public abstract List query(Object paramObject);

  public abstract List query(String paramString, Object paramObject);

  public abstract List query(Object paramObject, int paramInt1, int paramInt2);

  public abstract List query(String paramString, Object paramObject, int paramInt1, int paramInt2);

  public abstract Object get(String paramString, Serializable paramSerializable);

  public abstract Object get(String paramString1, String paramString2, Serializable paramSerializable);

  public abstract Object load(String paramString, Serializable paramSerializable);

  public abstract Object load(String paramString1, String paramString2, Serializable paramSerializable);

  public abstract void insert(Object paramObject);

  public abstract void insert(String paramString, Object paramObject);
  
  public void insert(SqlID sqlID, Object object);

  public abstract int update(Object paramObject);

  public abstract int update(String paramString, Object paramObject);

  public int update(SqlID sqlID, Object object);

  public abstract int delete(Object paramObject);

  public abstract int delete(String paramString, Object paramObject);

}
