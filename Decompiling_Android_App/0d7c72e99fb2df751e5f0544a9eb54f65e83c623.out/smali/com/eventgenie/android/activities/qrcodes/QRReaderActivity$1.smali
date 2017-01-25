.class Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$1;
.super Ljava/lang/Object;
.source "QRReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->showUrlPreviewDialog(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

.field final synthetic val$code:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$1;->val$code:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$1;->val$code:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;->getUrl()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->processURL(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->access$000(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V

    .line 496
    return-void
.end method
