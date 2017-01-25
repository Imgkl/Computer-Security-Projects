.class public final Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "MyInboxConfig.java"


# static fields
.field private static final ENABLE_IN_APP_MESSAGING:Ljava/lang/String; = "enableInAppMessaging"


# instance fields
.field private final mEnableInAppMessaging:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 44
    const-string v0, "enableInAppMessaging"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;->mEnableInAppMessaging:Z

    .line 45
    return-void
.end method


# virtual methods
.method public isInAppMessagingEnabled()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;->mEnableInAppMessaging:Z

    return v0
.end method
