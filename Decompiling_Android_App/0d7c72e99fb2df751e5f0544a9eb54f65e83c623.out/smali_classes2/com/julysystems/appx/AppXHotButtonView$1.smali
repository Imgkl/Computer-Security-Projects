.class Lcom/julysystems/appx/AppXHotButtonView$1;
.super Ljava/lang/Object;
.source "AppXHotButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXHotButtonView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXHotButtonView;

.field private final synthetic val$linkUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXHotButtonView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXHotButtonView$1;->this$0:Lcom/julysystems/appx/AppXHotButtonView;

    iput-object p2, p0, Lcom/julysystems/appx/AppXHotButtonView$1;->val$linkUrl:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/julysystems/appx/AppXHotButtonView$1;->val$linkUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/julysystems/appx/AppXUtils;->getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "viewUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method
