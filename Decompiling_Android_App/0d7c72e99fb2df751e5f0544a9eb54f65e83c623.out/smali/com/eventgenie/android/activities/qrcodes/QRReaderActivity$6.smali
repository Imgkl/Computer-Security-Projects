.class Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;
.super Ljava/lang/Object;
.source "QRReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->showVCardPreviewDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

.field final synthetic val$barCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;->val$barCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;->val$barCode:Ljava/lang/String;

    # invokes: Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->processVCard(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->access$500(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$6;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mVCardDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->access$400(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 628
    return-void
.end method
