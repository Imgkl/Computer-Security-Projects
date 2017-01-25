.class Lcom/julysystems/appx/AppXRenderRenderSelectionButton$3;
.super Ljava/lang/Object;
.source "AppXRenderRenderSelectionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXRenderRenderSelectionButton;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXRenderRenderSelectionButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$3;->this$0:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x80

    const/4 v1, 0x0

    .line 47
    invoke-static {v2, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$3;->this$0:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    iget-object v0, v0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 49
    invoke-static {v1, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    return-void
.end method
