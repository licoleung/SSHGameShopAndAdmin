package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092200571616";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDd6CeRv7mWjsXh\r\n" + 
    		"P4zbiYnkCZAEbAoLEvRyNj6W//PYeH9VnvScMPz0Ly5JqCho4umNESMRjVFGI9nE\r\n" + 
    		"qMGfvtAUmrabAz3D449ClHKqRZ0Wwjav5XK2O6W1vVjHXyQjNScBrMSOO/WOvqgs\r\n" + 
    		"P0fcicMsAXyWKpZXN8ls7S7iEUf1iuTr/y8YYoVVMEfG9U6WJfEJVqO55mVYsSot\r\n" + 
    		"8qvhqbPFCPsWUE2e8MpcuAyqdKU6eaD4TrHmcx0/FWzu4n9S0kRh0kTdMuaprY5F\r\n" + 
    		"IUE98Z2RGoox2pdrUknhu8Qj6kiwrqkPPz52rGbjrUfWHEXzwtTUYXWEeRtzlVYY\r\n" + 
    		"E1i23xHvAgMBAAECggEAb4Kq57Xlp//E9mT9/pBGB566jU5RWbFDv2T83NpwCfa7\r\n" + 
    		"XiZLm3WOl5Jh+0eSTurAHFBhQ/+0uL9pPkbjTcgQPlpkqs7dKePfaMC6QlBLGVWt\r\n" + 
    		"L4TouSSOKB6nT0DDIyIhoNjVyPfedMXgMqP2E5/ywNlaZwetltSE1sT1i0rN01fx\r\n" + 
    		"0CmMNYtCFW7lyPy+UF8cEosLSqERkNxkjmWrcy3PaxGqjCSA6a2EAFk9EyiM8EXN\r\n" + 
    		"HOy/k5ck49Hxb3yxYYdBhyHEtkw/rvTgDPALtTX0xf7PXBZnAJeUcWWQYgw3EQZE\r\n" + 
    		"7hsNKi/NfvRo3NIfoJN4zhZ2IsdSTj+u4f7awTv+cQKBgQD6LPfazGAny5sJIRcV\r\n" + 
    		"tSeH4jNMzgVZ2qVa66u2eeMRjo6qCcQzSX5a8tRQTxO2msxCcToegvBGHWgAyr8O\r\n" + 
    		"c5bB4/474lQHCPrZZYwrkGlb1VWN3D0lAfAFn1T81OtHDQIo0Mgq7f3tti48v8gM\r\n" + 
    		"ahzRBOWpXaLfzwgXc5/C20XcCQKBgQDjErS+A4zVyTFJEKt9rBXEKIVS8ajfguGo\r\n" + 
    		"wlNxnfZDnqfbHPTZMwvsM02fBGfLlTNk/Ux2WEXivsc+WE/tycPojX1BKFJcyvEi\r\n" + 
    		"YsnCfEJxwfXWpmXJ+oQErmeKw9E4bpBKsr06j+U9N0agLa4muIFqOleEeMG36zYu\r\n" + 
    		"m8NPlgFsNwKBgHbgCUIhXQtr1xZmb9azxr3twRycxLQmje3/EA/cKQZ9q9KmY2FP\r\n" + 
    		"acgDnNkwShi5w5dKwCghZdSbQoEl1dUjHZ6yHGsOJ4lUPgYxF4LX0wh8/XM0FKXS\r\n" + 
    		"HuA9DqA4+DdBuiX01zh27/MVXzEknAUyItE7N3nb8XnRoXGrUl2/3ZkpAoGBAIqv\r\n" + 
    		"kxp2mp67+dERUFw6LTUYNo25MRYKHv7uaP58prsX/Jcz8UtzBPYnQ2I605Ygszoc\r\n" + 
    		"BoZFVbGuKYynbXHjCDdRq02PbfZksK/6vBV/xSkreJW4HXUl/1nIl07GWFNqG9Cz\r\n" + 
    		"qCVLW4xu5UDRhYr6p3gU1/z9r/s/umDvG3PRP18zAoGAWCG/qdkf1q+L1YF7LEo0\r\n" + 
    		"pxsTE2bbzeGPrnLp+IbO4kgNIryrvXfWK7RsJKMTkU3XYtGNnPlWMN9WVgbYpDMO\r\n" + 
    		"KDoPJNVZjMhrO1whsx6wQwP1TQPLmy6q9iWgglrLaFhXtex1zwvh9429a8e6uA3n\r\n" + 
    		"Uz9RiBLkx20YuWNHXRj7UFQ=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3lomom7fuGYhllp2GSe1dq0y3fPf1ObO7C+3Jkw/+RVciJHw0S9lX8SN7wWngwPlvv15+Ar15S4tVEWFa87IEGoj37Hs/w17yRrS3AgrYbGGgHPRl315gwwoKQVRuyDOGWf94itC7yQjyluXq6OxGvgLCOTBxd0GB8RzmZXaCyjL/CuNAfpFaLftsZiMxCOhBQGgDSTiYd8MJEeS6DjhYY2eSgGDXEeV8foZc4LHBEIUiRv0oDM9y2drZ15ZTBG+zAGwj4p1iT037Kf9jAXdLIklXQedLvRgUieru4QqpGNY19dlf3CPWzQUMt5KJPF9VvXDuy+ntW22Jvbzh/qD1wIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/Hom9_sshGame/pay_success.action";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "D:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

