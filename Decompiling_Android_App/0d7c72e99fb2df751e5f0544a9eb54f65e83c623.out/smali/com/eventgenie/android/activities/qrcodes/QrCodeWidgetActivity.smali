.class public Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "QrCodeWidgetActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private mIvQrCode:Landroid/widget/ImageView;

.field private mLlHeaderScanAndCollect:Landroid/widget/LinearLayout;

.field private mRedirectQRReaderActivity:Z

.field private mTvQRButtons:Landroid/widget/TextView;

.field private mTvQRCode:Landroid/widget/TextView;

.field private mViewFlipper:Lcom/eventgenie/android/ui/other/CustomViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mRedirectQRReaderActivity:Z

    return-void
.end method

.method private displayVisitorQrCode(I)V
    .locals 8
    .param p1, "size"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    .line 65
    .local v1, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ QRCODE: Preparing QRCode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", logged in? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 67
    if-nez v1, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->isLoginEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-direct {p0, v4}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->setViewFlipper(I)V

    .line 84
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 65
    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mTvQRCode:Landroid/widget/TextView;

    sget v4, Lcom/eventgenie/android/R$string;->message_qrcode_the_buttons_below:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mTvQRButtons:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mLlHeaderScanAndCollect:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    const-string v2, "http://www.genie-connect.com"

    invoke-direct {p0, v2, p1, v3}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->drawQRCodeToIv(Ljava/lang/String;IZ)V

    .line 75
    sget v2, Lcom/eventgenie/android/R$id;->header_your_unique_qr_code:I

    sget v3, Lcom/eventgenie/android/R$string;->header_scan_and_collect:I

    invoke-static {v2, v3, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    const-string/jumbo v5, "visitors"

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v6

    invoke-static {v2, v3, v5, v6, v7}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getEntityDeeplinkAsJson(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "payload":Ljava/lang/String;
    invoke-direct {p0, v0, p1, v4}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->drawQRCodeToIv(Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method private drawQRCodeToIv(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "isBarcodeDisabled"    # Z

    .prologue
    .line 206
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mIvQrCode:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 209
    :try_start_0
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p1, v2, p2, p2}, Lcom/eventgenie/android/utils/qrcode/QRCodeUtils;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 215
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mIvQrCode:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    if-eqz p3, :cond_0

    .line 217
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mIvQrCode:Landroid/widget/ImageView;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/eventgenie/android/ui/help/UIUtils;->setImageViewAlpha(Landroid/widget/ImageView;I)V

    .line 223
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Lcom/google/zxing/WriterException;
    const/4 v0, 0x0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 220
    .end local v1    # "e":Lcom/google/zxing/WriterException;
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mIvQrCode:Landroid/widget/ImageView;

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_server_live:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setViewFlipper(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mViewFlipper:Lcom/eventgenie/android/ui/other/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/other/CustomViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mViewFlipper:Lcom/eventgenie/android/ui/other/CustomViewFlipper;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/other/CustomViewFlipper;->setDisplayedChild(I)V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getQRReader()Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;->isDisableVisitorQRCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->finish()V

    .line 97
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mRedirectQRReaderActivity:Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->finish()V

    .line 101
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mRedirectQRReaderActivity:Z

    goto :goto_0

    .line 106
    :cond_2
    sget v0, Lcom/eventgenie/android/R$layout;->activity_qrcode_widget:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->setContentView(I)V

    .line 107
    sget v0, Lcom/eventgenie/android/R$id;->flipper_barcode:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/other/CustomViewFlipper;

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mViewFlipper:Lcom/eventgenie/android/ui/other/CustomViewFlipper;

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 111
    sget v0, Lcom/eventgenie/android/R$id;->qrcode:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mIvQrCode:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/eventgenie/android/R$id;->message_your_unique_qrcode:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mTvQRCode:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/eventgenie/android/R$id;->message_qrcode_the_buttons_below:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mTvQRButtons:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/eventgenie/android/R$id;->header_scan_and_collect:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mLlHeaderScanAndCollect:Landroid/widget/LinearLayout;

    .line 116
    sget v0, Lcom/eventgenie/android/R$id;->header_your_unique_qr_code:I

    sget v1, Lcom/eventgenie/android/R$string;->header_your_unique_qrcode:I

    invoke-static {v0, v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 117
    sget v0, Lcom/eventgenie/android/R$id;->header_scan_and_collect:I

    sget v1, Lcom/eventgenie/android/R$string;->header_scan_and_collect:I

    invoke-static {v0, v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 119
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_barcode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->action_scan_qr_code:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_important:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->action_scanned_qr_codes:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mIvQrCode:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mIvQrCode:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 154
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->displayVisitorQrCode(I)V

    .line 155
    return-void
.end method

.method public onLoginClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x138a

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    return-void
.end method

.method protected onLoginSuccess()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onLoginSuccess()V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 173
    const-string v0, "QrCodeWidgetActivity onResume"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getQRReader()Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;->isDisableVisitorQRCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mRedirectQRReaderActivity:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->finish()V

    .line 181
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mRedirectQRReaderActivity:Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->finish()V

    .line 185
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->mRedirectQRReaderActivity:Z

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->isLoginEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->setViewFlipper(I)V

    goto :goto_0

    .line 194
    :cond_4
    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/qrcodes/QrCodeWidgetActivity;->setViewFlipper(I)V

    goto :goto_0
.end method
