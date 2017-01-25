.class public Lcom/urbanairship/actions/tags/AddTagsAction;
.super Lcom/urbanairship/actions/tags/BaseTagsAction;
.source "AddTagsAction.java"


# static fields
.field public static final DEFAULT_REGISTRY_NAME:Ljava/lang/String; = "add_tags_action"

.field public static final DEFAULT_REGISTRY_SHORT_NAME:Ljava/lang/String; = "^+t"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/urbanairship/actions/tags/BaseTagsAction;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/tags/AddTagsAction;->getTags(Lcom/urbanairship/actions/ActionArguments;)Ljava/util/Set;

    move-result-object v0

    .line 62
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddTagsAction - Adding tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/urbanairship/actions/tags/AddTagsAction;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {p0}, Lcom/urbanairship/actions/tags/AddTagsAction;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushManager;->setTags(Ljava/util/Set;)V

    .line 67
    invoke-static {}, Lcom/urbanairship/actions/ActionResult;->newEmptyResult()Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    return-object v1
.end method
