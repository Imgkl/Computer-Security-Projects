.class Lcom/google/zxing/client/android/result/GenieResultHandler$1;
.super Ljava/lang/Object;
.source "GenieResultHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/result/GenieResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/result/GenieResultHandler;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/result/GenieResultHandler;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/zxing/client/android/result/GenieResultHandler$1;->this$0:Lcom/google/zxing/client/android/result/GenieResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler$1;->this$0:Lcom/google/zxing/client/android/result/GenieResultHandler;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
