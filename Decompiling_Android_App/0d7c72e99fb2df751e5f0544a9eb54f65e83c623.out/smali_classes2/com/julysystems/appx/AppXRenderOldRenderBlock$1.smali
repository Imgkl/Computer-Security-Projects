.class Lcom/julysystems/appx/AppXRenderOldRenderBlock$1;
.super Ljava/lang/Object;
.source "AppXRenderOldRenderBlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXRenderOldRenderBlock;->initializeFields(Landroid/content/Context;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

.field private final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXRenderOldRenderBlock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock$1;->this$0:Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    iput-object p2, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock$1;->val$link:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock$1;->val$link:Ljava/lang/String;

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 136
    return-void
.end method
