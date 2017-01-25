.class Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;
.super Ljava/lang/Object;
.source "MyQRCodesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->showOnLongClickDialog(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

.field final synthetic val$id:J

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;JI)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    iput-wide p2, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->val$id:J

    iput p4, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 136
    packed-switch p2, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mLongClickDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$000(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$100(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->val$id:J

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/Udm;->qrCodeDelete(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$200(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->requery(Landroid/database/Cursor;)V

    .line 141
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$200(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$300(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$300(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mLongClickDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$000(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 151
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    iget v1, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;->val$pos:I

    # invokes: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->openQRCode(I)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$400(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;I)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
