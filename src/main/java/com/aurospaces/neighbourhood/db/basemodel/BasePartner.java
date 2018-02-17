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



public class BasePartner 
{

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
		 /** Field mapping. **/
@Column(name= "id")
protected int id   = 0;

/** Field mapping. **/
@Column(name= "mobile")
protected String mobile ;

/** Field mapping. **/
@Column(name= "email")
protected String email ;

/** Field mapping. **/
@Column(name= "password")
protected String password ;

/** Field mapping. **/
@Column(name= "salt")
protected String salt ;

/** Field mapping. **/
@Column(name= "created_time")
protected Date createdTime ;

/** Field mapping. **/
@Column(name= "updated_time")
protected Date updatedTime ;

/** Field mapping. **/
@Column(name= "name")
protected String name ;

public int getId()
{
  return id;
}
public void setId(final int id)
{
  this.id = id;
}
public String getMobile()
{
  return mobile;
}
public void setMobile(final String mobile)
{
  this.mobile = mobile;
}
public String getEmail()
{
  return email;
}
public void setEmail(final String email)
{
  this.email = email;
}
public String getPassword()
{
  return password;
}
public void setPassword(final String password)
{
  this.password = password;
}
public String getSalt()
{
  return salt;
}
public void setSalt(final String salt)
{
  this.salt = salt;
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
public String getName()
{
  return name;
}
public void setName(final String name)
{
  this.name = name;
}

}