.class public Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
.super Ljava/lang/Object;
.source "GenieMobileTokenReplacer.java"


# static fields
.field public static final REPLACE_TOKEN_ENTITY_ID:Ljava/lang/String; = "##ENTITY_ID##"

.field public static final REPLACE_TOKEN_ENTITY_TITLE:Ljava/lang/String; = "##ENTITY_TITLE##"

.field public static final REPLACE_TOKEN_VISITOR_COMPANY:Ljava/lang/String; = "##VISITOR_COMPANY##"

.field public static final REPLACE_TOKEN_VISITOR_EMAIL:Ljava/lang/String; = "##VISITOR_EMAIL##"

.field public static final REPLACE_TOKEN_VISITOR_FAX:Ljava/lang/String; = "##VISITOR_FAX##"

.field public static final REPLACE_TOKEN_VISITOR_FIRSTNAME:Ljava/lang/String; = "##VISITOR_FISRTNAME##"

.field public static final REPLACE_TOKEN_VISITOR_ID:Ljava/lang/String; = "##VISITOR_ID##"

.field public static final REPLACE_TOKEN_VISITOR_IMPORTKEY:Ljava/lang/String; = "##VISITOR_IMPORTKEY##"

.field public static final REPLACE_TOKEN_VISITOR_LASTNAME:Ljava/lang/String; = "##VISITOR_LASTNAME##"

.field public static final REPLACE_TOKEN_VISITOR_NAME:Ljava/lang/String; = "##VISITOR_NAME##"

.field public static final REPLACE_TOKEN_VISITOR_USERNAME:Ljava/lang/String; = "##VISITOR_USERNAME##"

.field public static final REPLACE_TOKEN_WIFI_PASSWORD:Ljava/lang/String; = "##WIFI_PASSWORD##"

.field public static final REPLACE_TOKEN_WIFI_SECURITY:Ljava/lang/String; = "##WIFI_SECURITY##"

.field public static final REPLACE_TOKEN_WIFI_SSID:Ljava/lang/String; = "##WIFI_SSID##"


# instance fields
.field private final mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

.field private final mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 69
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getWifiNetworkSettings()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V
    .locals 0
    .param p1, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p2, "mWifiNetworkSettings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 80
    iput-object p2, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .line 81
    return-void
.end method

.method private performCommonSubstitutions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 84
    const-string v1, "##VISITOR_EMAIL##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "##VISITOR_FAX##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "##VISITOR_IMPORTKEY##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "##VISITOR_NAME##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "##VISITOR_USERNAME##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "##VISITOR_ID##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "##VISITOR_LASTNAME##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "##VISITOR_FISRTNAME##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "##VISITOR_COMPANY##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_8
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "##WIFI_PASSWORD##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_9
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "##WIFI_SECURITY##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_a
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "##WIFI_SSID##"

    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_b
    invoke-virtual {p0, p1, v1, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object p1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getContact()Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getContact()Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;->getFax()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getImportKey()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getLastNames()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFirstNames()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    invoke-virtual {v0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    invoke-virtual {v0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSecurity()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->getAndroidFriendlyString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 97
    :cond_b
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    invoke-virtual {v0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method protected replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "find"    # Ljava/lang/String;
    .param p3, "replace"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p2}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    .end local p3    # "replace":Ljava/lang/String;
    :goto_0
    return-void

    .line 136
    .restart local p3    # "replace":Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3    # "replace":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/genie_connect/android/utils/string/StringUtils;->replaceAll(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public replaceTokens(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 103
    if-nez p1, :cond_1

    .line 104
    const/4 p1, 0x0

    .line 113
    .end local p1    # "txt":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 106
    .restart local p1    # "txt":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->performCommonSubstitutions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public replaceTokens(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "entityId"    # J
    .param p4, "entityTitle"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 118
    const/4 p1, 0x0

    .line 131
    .end local p1    # "txt":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 120
    .restart local p1    # "txt":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->performCommonSubstitutions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "##ENTITY_ID##"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "##ENTITY_TITLE##"

    invoke-virtual {p0, v0, v1, p4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
