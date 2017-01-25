.class public abstract Lcom/urbanairship/actions/tags/BaseTagsAction;
.super Lcom/urbanairship/actions/Action;
.source "BaseTagsAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 1
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/tags/BaseTagsAction;->getTags(Lcom/urbanairship/actions/ActionArguments;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPushManager()Lcom/urbanairship/push/PushManager;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    return-object v0
.end method

.method protected getTags(Lcom/urbanairship/actions/ActionArguments;)Ljava/util/Set;
    .locals 4
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/actions/ActionArguments;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v2

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 70
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 71
    .local v2, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v2    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 78
    .restart local v2    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    .line 79
    .local v1, "tag":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
