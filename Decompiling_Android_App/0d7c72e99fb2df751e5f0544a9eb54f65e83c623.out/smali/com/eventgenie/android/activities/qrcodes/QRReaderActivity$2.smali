.class Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$2;
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


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$2;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$2;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mUrlDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->access$100(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 503
    return-void
.end method
