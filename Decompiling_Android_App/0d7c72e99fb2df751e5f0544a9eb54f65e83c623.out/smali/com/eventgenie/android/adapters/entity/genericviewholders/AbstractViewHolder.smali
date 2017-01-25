.class public abstract Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;
.super Ljava/lang/Object;
.source "AbstractViewHolder.java"

# interfaces
.implements Lcom/eventgenie/android/adapters/entity/genericviewholders/GenericViewHolder;


# instance fields
.field private final mShowEntityId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;->mShowEntityId:Z

    return-void
.end method

.method protected static getDefaultDrawableForFav(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I
    .locals 1
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 30
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p0, v0, :cond_0

    .line 31
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    .line 35
    :goto_0
    return v0

    .line 32
    :cond_0
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p0, v0, :cond_2

    .line 33
    :cond_1
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_agenda:I

    goto :goto_0

    .line 35
    :cond_2
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_important:I

    goto :goto_0
.end method

.method protected static setColour(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const v3, 0x106000d

    .line 50
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 52
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, "..."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected static setVisibility(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected calcName(Lcom/eventgenie/android/container/EntityWrapper;)Ljava/lang/String;
    .locals 4
    .param p1, "wrapper"    # Lcom/eventgenie/android/container/EntityWrapper;

    .prologue
    .line 20
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    .line 22
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;->mShowEntityId:Z

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 20
    :cond_1
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
