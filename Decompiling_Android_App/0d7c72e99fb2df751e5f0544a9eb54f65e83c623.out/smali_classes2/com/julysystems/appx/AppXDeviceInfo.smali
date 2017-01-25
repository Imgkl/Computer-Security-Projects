.class Lcom/julysystems/appx/AppXDeviceInfo;
.super Ljava/lang/Object;
.source "AppXDeviceInfo.java"


# static fields
.field private static type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_0
    const-string v5, "a"

    invoke-static {p2, v5}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 26
    .local v0, "ahref":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 27
    .local v4, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 28
    const-string v5, "href"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    :cond_0
    if-eqz v4, :cond_1

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postParams="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/julysystems/appx/AppXDeviceInfo;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/julysystems/appx/AppXAESEncription;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "postData":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "db="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&dm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ov="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1.2.5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 33
    const-string v6, "&ap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/julysystems/appx/AppXConstants;->drawablePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/julysystems/appx/AppXDeviceInfo;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "deviceDet":Ljava/lang/String;
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/julysystems/appx/AppXUtils;->getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    new-instance v5, Lcom/julysystems/appx/AppXBackgroundRequest;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6, p3}, Lcom/julysystems/appx/AppXBackgroundRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    invoke-static {v5}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 45
    .end local v0    # "ahref":Lorg/w3c/dom/Element;
    .end local v1    # "deviceDet":Ljava/lang/String;
    .end local v3    # "postData":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 37
    .restart local v0    # "ahref":Lorg/w3c/dom/Element;
    .restart local v1    # "deviceDet":Ljava/lang/String;
    .restart local v3    # "postData":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 41
    .end local v0    # "ahref":Lorg/w3c/dom/Element;
    .end local v1    # "deviceDet":Ljava/lang/String;
    .end local v3    # "postData":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 75
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v1

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    :try_start_0
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 103
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSerialNo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 85
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

    .line 89
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v2

    .line 89
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/julysystems/appx/AppXDeviceInfo;->isValidUniqueId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    sput v1, Lcom/julysystems/appx/AppXDeviceInfo;->type:I

    .line 51
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getSerialNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/julysystems/appx/AppXDeviceInfo;->isValidUniqueId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/4 v1, 0x2

    sput v1, Lcom/julysystems/appx/AppXDeviceInfo;->type:I

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&type=2&uuid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getSerialNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/julysystems/appx/AppXDeviceInfo;->isValidUniqueId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    const/4 v1, 0x3

    sput v1, Lcom/julysystems/appx/AppXDeviceInfo;->type:I

    .line 57
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/julysystems/appx/AppXDeviceInfo;->isValidUniqueId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    const/4 v1, 0x4

    sput v1, Lcom/julysystems/appx/AppXDeviceInfo;->type:I

    .line 60
    invoke-static {p0}, Lcom/julysystems/appx/AppXDeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "&ud=NA"

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v1, "&ud=NA"

    goto :goto_0
.end method

.method private static isValidUniqueId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
