.class Lcom/julysystems/appx/AppXDeviceUtils;
.super Ljava/lang/Object;
.source "AppXDeviceUtils.java"


# static fields
.field public static brand:Ljava/lang/String;

.field public static cellLocation:Landroid/telephony/CellLocation;

.field public static countryCode:Ljava/lang/String;

.field public static lat:D

.field public static lng:D

.field public static model:Ljava/lang/String;

.field public static networkOperator:Ljava/lang/String;

.field public static networkOperatorName:Ljava/lang/String;

.field private static networkType:Ljava/lang/String;

.field public static phoneNumber:Ljava/lang/String;

.field public static phoneType:I

.field private static uniqueId:Ljava/lang/String;

.field public static wifiEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->isValidUniqueId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->init(Landroid/content/Context;)V

    .line 75
    :cond_0
    sget-object v0, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private static getFieldValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 179
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 180
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 231
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 218
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 219
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 221
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 222
    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 223
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 228
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 229
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "DeviceUtils - getLocalIpAddress"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    :try_start_0
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 100
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    :try_start_0
    sget-object v5, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    const-string v6, "000000000000000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    const-string v6, "000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->init(Landroid/content/Context;)V

    .line 110
    :cond_1
    sget-object v5, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 111
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 112
    .local v0, "digest":Ljava/security/MessageDigest;
    sget-object v5, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 114
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_3

    .line 121
    sget-boolean v5, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v5, :cond_2

    .line 122
    const-string v5, "MD5 value of UID ::::"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_1
    return-object v5

    .line 116
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "hexString":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    .restart local v4    # "messageDigest":[B
    :cond_3
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "h":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 125
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "h":Ljava/lang/String;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v5

    .line 128
    const-string v5, ""

    goto :goto_1
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 136
    sget-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 138
    :try_start_0
    sget-object v9, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 139
    .local v6, "mConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 141
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 143
    .local v8, "netType":I
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 144
    .local v7, "netSubtype":I
    if-ne v8, v11, :cond_1

    .line 145
    const-string v9, "wifi"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v4    # "info":Landroid/net/NetworkInfo;
    .end local v7    # "netSubtype":I
    .end local v8    # "netType":I
    :cond_0
    :goto_0
    sget-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    return-object v9

    .line 146
    .restart local v4    # "info":Landroid/net/NetworkInfo;
    .restart local v7    # "netSubtype":I
    .restart local v8    # "netType":I
    :cond_1
    if-nez v8, :cond_0

    .line 147
    :try_start_1
    const-string v9, "NETWORK_TYPE_EVDO_B"

    invoke-static {v9}, Lcom/julysystems/appx/AppXDeviceUtils;->getFieldValue(Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "evdob":I
    const-string v9, "NETWORK_TYPE_LTE"

    invoke-static {v9}, Lcom/julysystems/appx/AppXDeviceUtils;->getFieldValue(Ljava/lang/String;)I

    move-result v5

    .line 149
    .local v5, "lte":I
    const-string v9, "NETWORK_TYPE_HSPA"

    invoke-static {v9}, Lcom/julysystems/appx/AppXDeviceUtils;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    .line 150
    .local v3, "hspa":I
    const-string v9, "NETWORK_TYPE_EHRPD"

    invoke-static {v9}, Lcom/julysystems/appx/AppXDeviceUtils;->getFieldValue(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, "ehrpd":I
    const/4 v9, 0x3

    if-eq v7, v9, :cond_2

    const/4 v9, 0x5

    if-ne v7, v9, :cond_3

    .line 153
    :cond_2
    const-string v9, "3G"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    .end local v1    # "ehrpd":I
    .end local v2    # "evdob":I
    .end local v3    # "hspa":I
    .end local v4    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "lte":I
    .end local v7    # "netSubtype":I
    .end local v8    # "netType":I
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "DeviceUtils - getNetworkType"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception occured "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "ehrpd":I
    .restart local v2    # "evdob":I
    .restart local v3    # "hspa":I
    .restart local v4    # "info":Landroid/net/NetworkInfo;
    .restart local v5    # "lte":I
    .restart local v7    # "netSubtype":I
    .restart local v8    # "netType":I
    :cond_3
    const/16 v9, 0x8

    if-eq v7, v9, :cond_4

    const/16 v9, 0x9

    if-eq v7, v9, :cond_4

    if-eq v7, v3, :cond_4

    if-ne v7, v1, :cond_5

    .line 155
    :cond_4
    :try_start_2
    const-string v9, "3.5G"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_5
    const/4 v9, 0x6

    if-eq v7, v9, :cond_6

    if-ne v7, v2, :cond_7

    .line 157
    :cond_6
    const-string v9, "3.75G"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_7
    const/16 v9, 0xb

    if-ne v7, v9, :cond_8

    .line 159
    const-string v9, "2G"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_8
    const/4 v9, 0x2

    if-ne v7, v9, :cond_9

    .line 161
    const-string v9, "2.75G"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_9
    if-eq v7, v11, :cond_a

    const/4 v9, 0x7

    if-eq v7, v9, :cond_a

    const/4 v9, 0x4

    if-ne v7, v9, :cond_b

    .line 163
    :cond_a
    const-string v9, "2.5G"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_b
    if-ne v7, v5, :cond_c

    .line 165
    const-string v9, "4G"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;

    goto/16 :goto_0

    .line 166
    :cond_c
    if-nez v7, :cond_0

    .line 167
    const-string v9, "unknown"

    sput-object v9, Lcom/julysystems/appx/AppXDeviceUtils;->networkType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static getSerialNo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    .local v1, "get":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ro.serialno"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v2

    .line 86
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    const-string v2, "com.device.UUID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "dm_UUID"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "uuID":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 197
    const-string v2, "dm_UUID"

    invoke-static {p0, v2, v1}, Lcom/julysystems/appx/AppXDeviceUtils;->storeUUID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    return-object v1
.end method

.method public static getmd5HashUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    if-eqz p0, :cond_2

    .line 204
    const-string v2, "com.device.UUID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "dm_md5UUID"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "uuID":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->getMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "dm_md5UUID"

    invoke-static {p0, v2, v1}, Lcom/julysystems/appx/AppXDeviceUtils;->storeUUID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "uuID":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 46
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 47
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->isValidUniqueId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->phoneNumber:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->countryCode:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->networkOperator:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    sput v1, Lcom/julysystems/appx/AppXDeviceUtils;->phoneType:I

    .line 55
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->brand:Ljava/lang/String;

    .line 56
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->model:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->isValidUniqueId()Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->getSerialNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    .line 62
    :cond_2
    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->isValidUniqueId()Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    .line 64
    :cond_3
    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->isValidUniqueId()Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    .line 66
    :cond_4
    return-void

    .line 58
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isValidUniqueId()Z
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/julysystems/appx/AppXDeviceUtils;->uniqueId:Ljava/lang/String;

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static storeUUID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uuiD"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v2, "com.device.UUID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 187
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    return-void
.end method
