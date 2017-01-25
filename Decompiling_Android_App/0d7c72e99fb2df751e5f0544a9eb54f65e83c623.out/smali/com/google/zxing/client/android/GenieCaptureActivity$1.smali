.class Lcom/google/zxing/client/android/GenieCaptureActivity$1;
.super Ljava/lang/Object;
.source "GenieCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/GenieCaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/GenieCaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/GenieCaptureActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/zxing/client/android/GenieCaptureActivity$1;->this$0:Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity$1;->this$0:Lcom/google/zxing/client/android/GenieCaptureActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/zxing/client/android/GenieCaptureActivity$1;->this$0:Lcom/google/zxing/client/android/GenieCaptureActivity;

    const-class v3, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    iget-object v0, p0, Lcom/google/zxing/client/android/GenieCaptureActivity$1;->this$0:Lcom/google/zxing/client/android/GenieCaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/GenieCaptureActivity;->finish()V

    .line 149
    return-void
.end method
