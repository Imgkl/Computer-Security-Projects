.class public Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;
.super Ljava/lang/Object;
.source "EntityAdaptorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils$1;
    }
.end annotation


# static fields
.field private static final COLUMN_HAS_NOTE:Ljava/lang/String; = "hasNote"

.field private static final COLUMN_IS_FAVOURITE:Ljava/lang/String; = "isFavourite"

.field private static final COLUMN_IS_FEATURED:Ljava/lang/String; = "featured"

.field private static final ID_AND_ENTITY_NAME_FORMAT:Ljava/lang/String; = "ID: %s, %s"

.field private static final ID_AND_ENTITY_NAME_FORMAT_NEW_LINE:Ljava/lang/String; = "ID: %s\n%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getImageUrl(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;
    .locals 3
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 30
    sget-object v1, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    .line 57
    .local v0, "methodResult":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 32
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_0
    const-string v1, "mainImageUrl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 36
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_1
    const-string v1, "mugShotUrl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 40
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "thumbnailUrl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_3
    const-string v1, "logoUrl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_4
    const-string v1, "iconUrl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v1, "thumbUrl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getName(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 63
    sget-object v3, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 75
    const-string v3, "name"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "methodResult":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 66
    .end local v2    # "methodResult":Ljava/lang/String;
    :pswitch_0
    const-string v3, "fullTitleNames"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 67
    const-string v3, "fullTitleNames"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v2    # "methodResult":Ljava/lang/String;
    :cond_0
    const-string v3, "firstNames"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "firstName":Ljava/lang/String;
    const-string v3, "lastNames"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "lastName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "firstName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_2

    const-string v1, ""

    .end local v1    # "lastName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static hasNote(Luk/co/alt236/easycursor/EasyCursor;)Z
    .locals 1
    .param p0, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 82
    const-string v0, "hasNote"

    invoke-interface {p0, v0}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBookmarked(Luk/co/alt236/easycursor/EasyCursor;)Z
    .locals 2
    .param p0, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 97
    const-string v1, "isBookmarked"

    invoke-interface {p0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 99
    const-string v1, "isBookmarked"

    invoke-interface {p0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 101
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFavoute(Luk/co/alt236/easycursor/EasyCursor;)Z
    .locals 1
    .param p0, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 86
    const-string v0, "isFavourite"

    invoke-interface {p0, v0}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFeatured(Luk/co/alt236/easycursor/EasyCursor;)Z
    .locals 1
    .param p0, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 105
    const-string v0, "featured"

    invoke-interface {p0, v0}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static joinIdAndName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # J
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static joinIdAndName(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # J
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "newLine"    # Z

    .prologue
    .line 115
    if-eqz p3, :cond_0

    .line 116
    const-string v0, "ID: %s\n%s"

    .line 121
    .local v0, "format":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 118
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "ID: %s, %s"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 121
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static setFavourite(Landroid/view/View;ZZI)V
    .locals 3
    .param p0, "star"    # Landroid/view/View;
    .param p1, "isFav"    # Z
    .param p2, "hasNote"    # Z
    .param p3, "defaultFavDrawable"    # I

    .prologue
    const/4 v2, 0x0

    .line 125
    if-eqz p0, :cond_0

    .line 126
    if-eqz p2, :cond_2

    .line 127
    if-eqz p1, :cond_1

    move-object v0, p0

    .line 128
    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_blue_important_with_note:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, p0

    .line 130
    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_blue_note:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 134
    :cond_2
    if-eqz p1, :cond_3

    move-object v0, p0

    .line 135
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static setFeatured(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isFeatured"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_selector_featured:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
