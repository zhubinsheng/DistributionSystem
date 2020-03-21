package com.plug.xiaojiang.dist.utils;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.sun.org.apache.xml.internal.security.utils.Base64;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/**
 * @program: simple_tools
 * @description: 生成base64的二维码
 * @author: liuxu
 **/
public class QRCodeUtil {

    private static String content = null;

    /**
     * 功能描述:
     * 〈生成base64的二维码〉
     *
     * @params : [content]
     * @return : java.lang.String
     * @author : cwl
     * @date : 2019/12/31 9:34
     */
    public static String crateQRCode(String proxyId) throws IOException {
        content = "https://shop.zhongtouworld.com/qr?id=" + proxyId;
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        try {
            QRCodeWriter writer = new QRCodeWriter();
            BitMatrix bitMatrix = writer.encode(content, BarcodeFormat.QR_CODE, 200, 200);
            BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix);
            ImageIO.write(bufferedImage, "png", os);
            String base64Img = "data:image/png;base64," + Base64.encode(os.toByteArray());
            //添加图片标识
            return base64Img.substring(0,base64Img.length()-2);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            os.close();
        }
        return null;
    }

    public static void main(String arg[]) throws IOException {
        System.out.println(crateQRCode("1"));
    }
}

