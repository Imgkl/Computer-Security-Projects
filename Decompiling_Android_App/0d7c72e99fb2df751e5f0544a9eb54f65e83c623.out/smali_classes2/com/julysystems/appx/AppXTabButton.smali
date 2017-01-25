.class Lcom/julysystems/appx/AppXTabButton;
.super Landroid/widget/Button;
.source "AppXTabButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field focusGainFlag:Z

.field focusReleaseFlag:Z

.field pressFlag:Z

.field private renderField:Lcom/julysystems/appx/AppXRenderRenderField;

.field showFocusFlag:Z

.field private tabIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;ILcom/julysystems/appx/AppXRenderRenderField;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "tabIndex"    # I
    .param p4, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXTabButton;->pressFlag:Z

    .line 17
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXTabButton;->focusGainFlag:Z

    .line 18
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXTabButton;->focusReleaseFlag:Z

    .line 19
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXTabButton;->showFocusFlag:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/julysystems/appx/AppXTabButton;->tabIndex:I

    .line 25
    iput p3, p0, Lcom/julysystems/appx/AppXTabButton;->tabIndex:I

    .line 26
    iput-object p4, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXTabButton;->setFocusable(Z)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXTabButton;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/julysystems/appx/AppXTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/julysystems/appx/AppXTabButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderField;->getSelectedTabIndex()I

    move-result v1

    iget v2, p0, Lcom/julysystems/appx/AppXTabButton;->tabIndex:I

    if-eq v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    iget v2, p0, Lcom/julysystems/appx/AppXTabButton;->tabIndex:I

    invoke-virtual {v1, v2}, Lcom/julysystems/appx/AppXRenderRenderField;->setSelectedTabIndex(I)V

    .line 36
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderField;->getParams()Ljava/util/Hashtable;

    move-result-object v0

    .line 37
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "selectedTab"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "selectedTab"

    iget v2, p0, Lcom/julysystems/appx/AppXTabButton;->tabIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderField;->init()V

    .line 40
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderField;->invalidate()V

    .line 42
    .end local v0    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXTabButton;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderField;->getParams()Ljava/util/Hashtable;

    move-result-object v0

    .line 47
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "focusedTab"

    iget v2, p0, Lcom/julysystems/appx/AppXTabButton;->tabIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderField;->init()V

    .line 49
    iget-object v1, p0, Lcom/julysystems/appx/AppXTabButton;->renderField:Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRenderField;->invalidate()V

    .line 51
    .end local v0    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
