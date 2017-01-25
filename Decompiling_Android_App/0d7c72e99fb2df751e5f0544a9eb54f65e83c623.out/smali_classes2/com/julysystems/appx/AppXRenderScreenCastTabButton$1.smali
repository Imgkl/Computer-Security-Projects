.class Lcom/julysystems/appx/AppXRenderScreenCastTabButton$1;
.super Ljava/lang/Object;
.source "AppXRenderScreenCastTabButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXRenderScreenCastTabButton;-><init>(Landroid/content/Context;Landroid/graphics/RectF;ILcom/julysystems/appx/AppXRenderScreenCastView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXRenderScreenCastTabButton;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXRenderScreenCastTabButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton$1;->this$0:Lcom/julysystems/appx/AppXRenderScreenCastTabButton;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton$1;->this$0:Lcom/julysystems/appx/AppXRenderScreenCastTabButton;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->buttonOnClick()V

    .line 47
    return-void
.end method
