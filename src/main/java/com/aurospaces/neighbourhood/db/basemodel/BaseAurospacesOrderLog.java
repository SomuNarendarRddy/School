package com.aurospaces.neighbourhood.db.basemodel;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



import java.util.Date;
import java.math.BigDecimal;


/**
 *
 * @author autogenerated
 */



public class BaseAurospacesOrderLog 
{

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
		 /** Field mapping. **/
@Column(name= "id")
protected int id   = 0;

/** Field mapping. **/
@Column(name= "created_time")
protected Date createdTime ;

/** Field mapping. **/
@Column(name= "updated_time")
protected Date updatedTime ;

/** Field mapping. **/
@Column(name= "order_id")
protected int orderId ;

/** Field mapping. **/
@Column(name= "aurospaces_log")
protected String aurospacesLog ;

/** Field mapping. **/
@Column(name= "user_id")
protected int userId ;

public int getId()
{
  return id;
}
public void setId(final int id)
{
  this.id = id;
}
public Date getCreatedTime()
{
  return createdTime;
}
public void setCreatedTime(final Date createdTime)
{
  this.createdTime = createdTime;
}
public Date getUpdatedTime()
{
  return updatedTime;
}
public void setUpdatedTime(final Date updatedTime)
{
  this.updatedTime = updatedTime;
}
public int getOrderId()
{
  return orderId;
}
public void setOrderId(final int orderId)
{
  this.orderId = orderId;
}
public String getAurospacesLog()
{
  return aurospacesLog;
}
public void setAurospacesLog(final String aurospacesLog)
{
  this.aurospacesLog = aurospacesLog;
}
public int getUserId()
{
  return userId;
}
public void setUserId(final int userId)
{
  this.userId = userId;
}

}