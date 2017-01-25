.class public Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
.super Ljava/lang/Object;
.source "CheckboxListItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/eventgenie/android/ui/searchui/CheckboxListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private checkedValue:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

.field private final mTagItem:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "tagItem":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    iput-object v0, p0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->checkedValue:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 26
    iput-object p1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->mTagItem:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 27
    return-void
.end method

.method public static getChildItems(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/searchui/CheckboxListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "item":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .local v2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/eventgenie/android/ui/searchui/CheckboxListItem;>;"
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 16
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    new-instance v3, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    invoke-direct {v3, v0}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public compareTo(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)I
    .locals 3
    .param p1, "another"    # Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 53
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->compareTo(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)I

    move-result v0

    return v0
.end method

.method public getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->checkedValue:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    return-object v0
.end method

.method public getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->mTagItem:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCheckedValue(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V
    .locals 0
    .param p1, "checkedValue"    # Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->checkedValue:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckboxListItem [mTagItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->mTagItem:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->checkedValue:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
