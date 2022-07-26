/**  
 * 默认配置  
 * @author yupi  
 */  
module.exports = {  
  redisConfig: {  
    host: "redis",  
    port: "6379",  
    password: "123456",  
    db: 2,  
  },  
  // MySQL 配置  
  dbConfig: {  
    database: "yuindex",  
    username: "yuindex",  
    password: "123456",  
    host: "db",  
    port: 3306,  
  },  
  // 百度翻译配置，自行申请免费版即可（https://fanyi-api.baidu.com/）  
  baiduFanYiConfig: {  
    appid: "",  
    key: "",  
  },  
};
