.class Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton$1;
.super Ljava/lang/Object;
.source "AppXRenderScreenCastSelectionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;-><init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderRectC;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton$1;->this$0:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton$1;->this$0:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    # getter for: Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->actionUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->access$0(Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 41
    return-void
.end method
