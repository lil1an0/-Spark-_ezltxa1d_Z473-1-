# coding:utf-8
import random
from datetime import datetime
from sqlalchemy import text,TIMESTAMP

from api.models.models import Base_model
from api.exts import db
from sqlalchemy.dialects.mysql import DOUBLE,LONGTEXT
# 个人信息
class qixiangshuju(Base_model):
    __doc__ = u'''qixiangshuju'''
    __tablename__ = 'qixiangshuju'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    nianfen=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='年份' )
    yuefen=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='月份' )
    diqumingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='地区名称' )
    pingjunqiwen=db.Column( db.Float, default=0 ,  nullable=True, unique=False,comment='平均气温（℃）' )
    zuidiqiwen=db.Column( db.Float, default=0 ,  nullable=True, unique=False,comment='平均最低气温（℃）' )
    zuigaoqiwen=db.Column( db.Float, default=0 ,  nullable=True, unique=False,comment='平均最高气温（℃）' )
    kongqishidu=db.Column( db.Float, default=0 ,  nullable=True, unique=False,comment='平均空气湿度（%）' )
    pingjunfengsu=db.Column( db.Float, default=0 ,  nullable=True, unique=False,comment='平均风速（m/s）' )
    pingjunfengxiang=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='平均风向' )
    guangzhaoshizhang=db.Column( db.Float, default=0 ,  nullable=True, unique=False,comment='平均光照时长（小时）' )
    guangzhaoqiangdu=db.Column( db.Float, default=0 ,  nullable=True, unique=False,comment='平均光照强度（W/m²）' )
    junziwaixian=db.Column( db.Integer, default=0 ,  nullable=True, unique=False,comment='平均紫外线强度（UV Index）' )
    bianhuamiaoshu=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='春耕气候变化描述' )
    qiushouqihou=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='秋收气候变化描述' )
    qixiangyinsu=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='影响春耕秋收的气象因素' )

class ditu(Base_model):
    __doc__ = u'''ditu'''
    __tablename__ = 'ditu'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    shengfen=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='省份' )
    shuliang=db.Column( db.Integer, default=0 ,  nullable=True, unique=False,comment='数量' )

