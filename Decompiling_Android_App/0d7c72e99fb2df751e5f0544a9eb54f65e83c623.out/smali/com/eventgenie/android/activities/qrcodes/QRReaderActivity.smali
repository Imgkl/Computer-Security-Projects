.class public Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "QRReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$8;,
        Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;
    }
.end annotation


# static fields
.field public static final ASK_FOR_BARCODE:I = 0x64

.field public static final EXTRA_BARCODE_STRING:Ljava/lang/String; = "extra_barcode"


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mEntityViewDialog:Landroid/app/Dialog;

.field private mUrlDialog:Landroid/app/Dialog;

.field private mVCardDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 643
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->processURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->saveURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->saveVCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->processVCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method private onInvalidData()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->showNotValidDataError()V

    .line 185
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    .line 186
    return-void
.end method

.method private parseBarCode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "barCode"    # Ljava/lang/String;
    .param p2, "viewOnly"    # Z

    .prologue
    .line 190
    const-string v1, "^ BARCODE: Parsing barcode"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/genie_connect/android/db/config/AppConfig;)Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;

    move-result-object v0

    .line 193
    .local v0, "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    if-nez v0, :cond_0

    .line 194
    const-string v1, "^ BARCODE: Parsing barcode - NULL"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    .line 224
    .end local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :goto_0
    return-void

    .line 197
    .restart local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ BARCODE: Parsing barcode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;->getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 199
    sget-object v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$8;->$SwitchMap$com$eventgenie$android$utils$qrcode$containers$QRCodeType:[I

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;->getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 219
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    goto :goto_0

    .line 201
    :pswitch_0
    check-cast v0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;

    .end local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->parseGenieDeeplinkCode(Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;Z)V

    goto :goto_0

    .line 204
    .restart local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :pswitch_1
    check-cast v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;

    .end local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->parseGenieIntent(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;Z)V

    goto :goto_0

    .line 207
    .restart local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :pswitch_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    goto :goto_0

    .line 210
    :pswitch_3
    check-cast v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;

    .end local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->showUrlPreviewDialog(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;Z)V

    goto :goto_0

    .line 213
    .restart local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->showVCardPreviewDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 216
    :pswitch_5
    check-cast v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;

    .end local v0    # "code":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->parseCompusystems(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;Z)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseCompusystems(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;Z)V
    .locals 4
    .param p1, "barCode"    # Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;
    .param p2, "viewOnly"    # Z

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getImportKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getInAppBrowserIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 267
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    .line 268
    return-void

    .line 237
    :cond_0
    sget v0, Lcom/eventgenie/android/R$string;->msg_no_importkey_has_been_assigned_to_the_logged_in_visitor:I

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastLoginRequired(Landroid/content/Context;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getImportKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    new-instance v0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/eventgenie/android/EventGenieApplication;->addToFFQueue(Landroid/content/Context;Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V

    .line 252
    sget v0, Lcom/eventgenie/android/R$string;->msg_qrcode_saved_in_ffq:I

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 257
    :cond_3
    sget v0, Lcom/eventgenie/android/R$string;->msg_no_importkey_has_been_assigned_to_the_logged_in_visitor:I

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 264
    :cond_4
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastLoginRequired(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private parseGenieDeeplinkCode(Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;Z)V
    .locals 8
    .param p1, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;
    .param p2, "viewOnly"    # Z

    .prologue
    .line 272
    const-string v4, "^ BARCODE: This is a Genie Deeplink code!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 274
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_DEEPLINK:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    if-ne v4, v5, :cond_6

    .line 275
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->isValidHash()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 276
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/Deeplink;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/genieintent/Deeplink;-><init>(Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;)V

    .line 277
    .local v0, "deeplink":Lcom/eventgenie/android/utils/genieintent/Deeplink;
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    .line 279
    .local v2, "namespace":J
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getNamespace()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 281
    if-nez p2, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityId()J

    move-result-wide v6

    invoke-static {p0, v4, v6, v7}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyQrCodeScanned(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 286
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->saveDeepLinkCode(Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;Lcom/eventgenie/android/utils/genieintent/Deeplink;)V

    .line 288
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/Deeplink;Landroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 290
    .local v1, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    if-eqz v1, :cond_2

    .line 291
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getNotificationStyle()Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->POPUP_OK:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    if-ne v4, v5, :cond_1

    .line 292
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->forceToast()V

    .line 295
    :cond_1
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    .line 318
    .end local v0    # "deeplink":Lcom/eventgenie/android/utils/genieintent/Deeplink;
    .end local v1    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v2    # "namespace":J
    :goto_1
    return-void

    .line 298
    .restart local v0    # "deeplink":Lcom/eventgenie/android/utils/genieintent/Deeplink;
    .restart local v1    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .restart local v2    # "namespace":J
    :cond_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    goto :goto_0

    .line 302
    .end local v1    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_3
    const-string v4, "^ BARCODE: GenieCode - Incorrect Namespace!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    goto :goto_1

    .line 307
    .end local v2    # "namespace":J
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ BARCODE: GenieCode - Invalid Deeplink: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    goto :goto_1

    .line 311
    .end local v0    # "deeplink":Lcom/eventgenie/android/utils/genieintent/Deeplink;
    :cond_5
    const-string v4, "^ BARCODE: GenieCode - Incorrect Hash!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    goto :goto_1

    .line 315
    :cond_6
    const-string v4, "^ BARCODE: GenieCode - Unknown Type!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->onInvalidData()V

    goto :goto_1
.end method

.method private parseGenieIntent(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;Z)V
    .locals 6
    .param p1, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;
    .param p2, "viewOnly"    # Z

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v0

    .line 324
    .local v0, "result":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getStatus()Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    move-result-object v1

    .line 326
    .local v1, "status":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    if-ne v1, v2, :cond_1

    .line 327
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getAction()Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->VIEW:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    if-ne v2, v3, :cond_0

    if-nez p2, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v4

    invoke-static {p0, v2, v4, v5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyQrCodeScanned(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 334
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->saveDeepLinkCode(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;)V

    .line 337
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FORCE_PERSIST_VISITOR"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->processIntentResult(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;Z)V

    .line 344
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    .line 345
    return-void
.end method

.method private processURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "barCode"    # Ljava/lang/String;

    .prologue
    .line 354
    :try_start_0
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->saveURL(Ljava/lang/String;)V

    .line 355
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 357
    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 358
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private processVCard(Ljava/lang/String;)V
    .locals 3
    .param p1, "barCode"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v1, Lcom/a_vcard/android/syncml/pim/PimParser;

    invoke-direct {v1, p1}, Lcom/a_vcard/android/syncml/pim/PimParser;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "parser":Lcom/a_vcard/android/syncml/pim/PimParser;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a_vcard/android/syncml/pim/PimParser;->getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;

    move-result-object v0

    .line 375
    .local v0, "contact":Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->saveVCard(Ljava/lang/String;)V

    .line 378
    invoke-interface {v0}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    .line 380
    return-void
.end method

.method private saveDeepLinkCode(Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;Lcom/eventgenie/android/utils/genieintent/Deeplink;)V
    .locals 2
    .param p1, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;
    .param p2, "deeplink"    # Lcom/eventgenie/android/utils/genieintent/Deeplink;

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ BARCODE: saveDeepLinkCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;Lcom/eventgenie/android/utils/genieintent/Deeplink;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 393
    sget v0, Lcom/eventgenie/android/R$string;->qrcode_toast_url_saved:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method private saveDeepLinkCode(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;)V
    .locals 2
    .param p1, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ BARCODE: saveDeepLinkCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;

    invoke-direct {v0, p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 385
    sget v0, Lcom/eventgenie/android/R$string;->qrcode_toast_url_saved:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 388
    return-void
.end method

.method private saveURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "barCode"    # Ljava/lang/String;

    .prologue
    .line 402
    move-object v0, p1

    .line 403
    .local v0, "displayName":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;

    const-string/jumbo v2, "type_url"

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 404
    sget v1, Lcom/eventgenie/android/R$string;->qrcode_toast_url_saved:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method private saveVCard(Ljava/lang/String;)V
    .locals 5
    .param p1, "barCode"    # Ljava/lang/String;

    .prologue
    .line 410
    new-instance v1, Lcom/a_vcard/android/syncml/pim/PimParser;

    invoke-direct {v1, p1}, Lcom/a_vcard/android/syncml/pim/PimParser;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "parser":Lcom/a_vcard/android/syncml/pim/PimParser;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a_vcard/android/syncml/pim/PimParser;->getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;

    move-result-object v0

    .line 413
    .local v0, "contact":Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
    new-instance v2, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;

    const-string/jumbo v3, "type_contact_card"

    invoke-interface {v0}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 414
    sget v2, Lcom/eventgenie/android/R$string;->qrcode_toast_contact_saved:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method private showNotValidDataError()V
    .locals 2

    .prologue
    .line 466
    sget v0, Lcom/eventgenie/android/R$string;->qrcode_error:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 467
    const-string v0, "^ BARCODE: Invalid data"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method private showUrlPreviewDialog(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;Z)V
    .locals 7
    .param p1, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;
    .param p2, "viewOnly"    # Z

    .prologue
    const/16 v6, 0x8

    .line 476
    new-instance v4, Lcom/eventgenie/android/ui/dialog/GenieDialog;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    .line 477
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    sget v5, Lcom/eventgenie/android/R$layout;->dialog_qrcode_url_preview:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 478
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    sget v5, Lcom/eventgenie/android/R$string;->qrcode_title_url_preview:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 479
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 480
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    sget v5, Lcom/eventgenie/android/R$id;->qrcode_url:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 481
    .local v2, "url":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    sget v5, Lcom/eventgenie/android/R$id;->qrcode_url_visit:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 484
    .local v3, "visit":Landroid/widget/Button;
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    sget v5, Lcom/eventgenie/android/R$id;->qrcode_url_save:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 485
    .local v1, "save":Landroid/widget/Button;
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    sget v5, Lcom/eventgenie/android/R$id;->qrcode_url_discard:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 487
    .local v0, "discard":Landroid/widget/Button;
    if-eqz p2, :cond_0

    .line 488
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    :cond_0
    new-instance v4, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$1;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    new-instance v4, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$2;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$2;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    new-instance v4, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$3;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$4;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$4;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 522
    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 523
    return-void
.end method

.method private showVCardPreviewDialog(Ljava/lang/String;Z)V
    .locals 24
    .param p1, "barCode"    # Ljava/lang/String;
    .param p2, "viewOnly"    # Z

    .prologue
    .line 531
    new-instance v15, Lcom/a_vcard/android/syncml/pim/PimParser;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/a_vcard/android/syncml/pim/PimParser;-><init>(Ljava/lang/String;)V

    .line 532
    .local v15, "parser":Lcom/a_vcard/android/syncml/pim/PimParser;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/a_vcard/android/syncml/pim/PimParser;->getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;

    move-result-object v8

    .line 534
    .local v8, "contact":Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
    new-instance v22, Lcom/eventgenie/android/ui/dialog/GenieDialog;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/dialog/GenieDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$layout;->vcard_details:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->setContentView(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$string;->qrcode_title_contact_details:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->setTitle(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_name:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 544
    .local v13, "fullname":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_company:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 545
    .local v7, "company":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_email:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 546
    .local v12, "email":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_phone_work:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 547
    .local v17, "phoneWork":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_phone_home:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 548
    .local v16, "phoneHome":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_address_home:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 549
    .local v4, "addressHome":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_address_work:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 550
    .local v5, "addressWork":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_notes:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 551
    .local v14, "notes":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_addcontact:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 552
    .local v3, "addToContact":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_discard:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 553
    .local v10, "discard":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_save:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 555
    .local v19, "save":Landroid/widget/Button;
    if-eqz p2, :cond_0

    .line 556
    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    :cond_0
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getFullName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getCompany()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getEmail()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getPhoneWork()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getPhoneHome()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getAddressHome()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getAddressWork()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getNote()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-gtz v22, :cond_1

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->phone_work_layout:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-gtz v22, :cond_2

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->phone_home_layout:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 581
    :cond_2
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-gtz v22, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->email_layout:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 585
    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-gtz v22, :cond_4

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->address_home_layout:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 589
    :cond_4
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-gtz v22, :cond_5

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->address_work_layout:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 593
    :cond_5
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-gtz v22, :cond_6

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->notes_layout:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :cond_6
    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v18

    .line 598
    .local v18, "photoURL":Ljava/lang/String;
    const-string v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->vcard_photo:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 600
    .local v9, "contactImage":Landroid/widget/ImageView;
    const/16 v20, 0x0

    .line 602
    .local v20, "url":Ljava/net/URL;
    :try_start_0
    new-instance v21, Ljava/net/URL;

    invoke-interface {v8}, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v20    # "url":Ljava/net/URL;
    .local v21, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 604
    .local v6, "bmp":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 605
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 614
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "contactImage":Landroid/widget/ImageView;
    .end local v21    # "url":Ljava/net/URL;
    :cond_7
    :goto_0
    new-instance v22, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$5;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    new-instance v22, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    new-instance v22, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$7;-><init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    .line 638
    return-void

    .line 606
    .restart local v9    # "contactImage":Landroid/widget/ImageView;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v11

    .line 607
    .local v11, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 606
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v20    # "url":Ljava/net/URL;
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v21    # "url":Ljava/net/URL;
    :catch_1
    move-exception v11

    move-object/from16 v20, v21

    .end local v21    # "url":Ljava/net/URL;
    .restart local v20    # "url":Ljava/net/URL;
    goto :goto_1
.end method


# virtual methods
.method public captureWithMarketRedirect()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    return-void
.end method

.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->captureWithMarketRedirect()V

    .line 738
    return-void
.end method

.method protected doActionAfterRejectingPermissions()V
    .locals 0

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    .line 748
    return-void
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_camera_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_camera_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_camera_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_camera_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 742
    const/16 v0, 0x7d

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 712
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getRequiredMainPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    const-string v0, "android.permission.CAMERA"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 113
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 114
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "contents":Ljava/lang/String;
    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "format":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ BARCODE FORMAT  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 117
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->parseBarCode(Ljava/lang/String;Z)V

    .line 126
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    if-nez p2, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->showNotValidDataError()V

    .line 123
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const-string v1, ""

    .line 133
    .local v1, "barCode":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$layout;->activity_qrreader:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getQRReader()Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->QR_SCANNER:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v4, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 139
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 140
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "b":Landroid/os/Bundle;
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->setRequestedOrientation(I)V

    .line 143
    if-eqz v0, :cond_0

    .line 144
    const-string v3, "extra_barcode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_0
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->doCheckPermissionsOnResume(Z)V

    .line 150
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 151
    invoke-direct {p0, v1, v6}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->parseBarCode(Ljava/lang/String;Z)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->checkPermissionAndDoAction()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mEntityViewDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mEntityViewDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 173
    :cond_2
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 175
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->finish()V

    .line 180
    return-void
.end method
