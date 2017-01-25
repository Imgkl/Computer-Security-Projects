.class Lcom/julysystems/appx/AppXBaseLinearLayout;
.super Landroid/widget/RelativeLayout;
.source "AppXBaseLinearLayout.java"

# interfaces
.implements Lcom/julysystems/appx/AppXServerPushCallback;


# instance fields
.field public element:Lorg/w3c/dom/Element;

.field private stateParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->element:Lorg/w3c/dom/Element;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->stateParams:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->element:Lorg/w3c/dom/Element;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->stateParams:Ljava/util/HashMap;

    .line 24
    iput-object p2, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->element:Lorg/w3c/dom/Element;

    .line 25
    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "updateLastState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p2}, Lcom/julysystems/appx/AppXBaseLinearLayout;->updateLastState(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' definition not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getLastState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->stateParams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 41
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "key":Ljava/lang/String;
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object v2, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->stateParams:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected updateLastState(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/julysystems/appx/AppXBaseLinearLayout;->stateParams:Ljava/util/HashMap;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected updateWithNode(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    .line 62
    return-void
.end method
