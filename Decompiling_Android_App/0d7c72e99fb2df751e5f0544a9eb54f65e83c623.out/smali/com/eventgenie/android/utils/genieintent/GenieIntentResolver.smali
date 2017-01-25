.class public Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;
.super Ljava/lang/Object;
.source "GenieIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    return-void
.end method

.method private static actionAddBookmarkEntity(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .prologue
    .line 59
    const-string v1, "^ GENIEINTENTRESOLVER: action Add Bookmark "

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->SESSIONS_FAVOURITING_ENABLED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-static {p0, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->isActionAllowed(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v0

    .line 64
    .local v0, "isAllowed":Z
    if-eqz v0, :cond_1

    .line 65
    invoke-static {p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->getDB(Landroid/content/Context;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getNamespace()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->BOOKMARK:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->bookmark(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    move-result-object v10

    .line 72
    .local v10, "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    if-ne v10, v1, :cond_0

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyBookmarkSession(Landroid/content/Context;ZLjava/lang/Long;)Z

    .line 77
    :cond_0
    new-instance v9, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_favourite_added:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .line 87
    .end local v10    # "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .local v9, "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :goto_0
    return-object v9

    .line 82
    .end local v9    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_1
    new-instance v9, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->REJECTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_adding_and_removing_from_favourites_via_a_genieintent_is_not_allowed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .restart local v9    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    goto :goto_0
.end method

.method private static actionAddToFavourites(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getOrigin()Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->LINK:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    if-ne v1, v2, :cond_0

    .line 138
    sget-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_GENIE_INTENTS:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .line 145
    .local v0, "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    :goto_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->isActionAllowed(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v9

    .line 147
    .local v9, "isAllowed":Z
    if-eqz v9, :cond_2

    .line 148
    invoke-static {p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->getDB(Landroid/content/Context;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getNamespace()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->favorite(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    move-result-object v11

    .line 156
    .local v11, "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    new-instance v10, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_favourite_added:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .line 171
    .end local v11    # "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .local v10, "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :goto_1
    return-object v10

    .line 139
    .end local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    .end local v9    # "isAllowed":Z
    .end local v10    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getOrigin()Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->INTERNAL:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    if-ne v1, v2, :cond_1

    .line 140
    sget-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_STAR:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .restart local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    goto :goto_0

    .line 142
    .end local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    goto :goto_0

    .line 166
    .restart local v9    # "isAllowed":Z
    :cond_2
    new-instance v10, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->REJECTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_adding_and_removing_from_favourites_via_a_genieintent_is_not_allowed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .restart local v10    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    goto :goto_1
.end method

.method private static actionRemoveBookmarkEntity(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .prologue
    .line 100
    const-string v1, "^ GENIEINTENTRESOLVER: action Remove Bookmark "

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->SESSIONS_FAVOURITING_ENABLED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-static {p0, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->isActionAllowed(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v0

    .line 105
    .local v0, "isAllowed":Z
    if-eqz v0, :cond_1

    .line 106
    invoke-static {p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->getDB(Landroid/content/Context;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getNamespace()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->UN_BOOKMARK:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->bookmark(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    move-result-object v10

    .line 113
    .local v10, "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    if-ne v10, v1, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyBookmarkSession(Landroid/content/Context;ZLjava/lang/Long;)Z

    .line 118
    :cond_0
    new-instance v9, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_favourite_added:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .line 128
    .end local v10    # "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .local v9, "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :goto_0
    return-object v9

    .line 123
    .end local v9    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_1
    new-instance v9, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->REJECTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_adding_and_removing_from_favourites_via_a_genieintent_is_not_allowed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .restart local v9    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    goto :goto_0
.end method

.method private static actionRemoveFromFavourites(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getOrigin()Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->LINK:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    if-ne v1, v2, :cond_0

    .line 179
    sget-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_GENIE_INTENTS:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .line 186
    .local v0, "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    :goto_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->isActionAllowed(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v9

    .line 188
    .local v9, "isAllowed":Z
    if-eqz v9, :cond_2

    .line 189
    invoke-static {p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->getDB(Landroid/content/Context;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getNamespace()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->favorite(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    move-result-object v11

    .line 197
    .local v11, "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    new-instance v10, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_favourite_removed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .line 213
    .end local v11    # "success":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .local v10, "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :goto_1
    return-object v10

    .line 180
    .end local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    .end local v9    # "isAllowed":Z
    .end local v10    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getOrigin()Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->INTERNAL:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    if-ne v1, v2, :cond_1

    .line 181
    sget-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_STAR:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .restart local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    goto :goto_0

    .line 183
    .end local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "action":Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    goto :goto_0

    .line 208
    .restart local v9    # "isAllowed":Z
    :cond_2
    new-instance v10, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->REJECTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_adding_and_removing_from_favourites_via_a_genieintent_is_not_allowed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .restart local v10    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    goto :goto_1
.end method

.method private static actionView(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "genieIntent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .prologue
    .line 217
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-static {p0, v2, v4, v5, v3}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    return-object v0
.end method

.method private static getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method private static getDB(Landroid/content/Context;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    return-object v0
.end method

.method private static isActionAllowed(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "action"    # Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .prologue
    .line 233
    invoke-static {p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v0

    return v0
.end method

.method public static resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ GENIEINTENTRESOLVER: Loading Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 239
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ GENIEINTENTRESOLVER: Invalid Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->INVALID:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_unable_to_action_genieintent_as_the_payload_is_invalid:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->validateNamespace(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ GENIEINTENTRESOLVER: Invalid namespace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 249
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->INVALID:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget v2, Lcom/eventgenie/android/R$string;->message_unable_to_action_genieintent_as_it_refers_to_a_different_application:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_2
    sget-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver$1;->$SwitchMap$com$eventgenie$android$utils$genieintent$GenieIntentAction:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getAction()Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ GENIEINTENTRESOLVER: No handler for intent with action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getAction()Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->INVALID:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    invoke-direct {v0, p1, v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;)V

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->actionAddBookmarkEntity(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_1
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->actionRemoveBookmarkEntity(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->actionAddToFavourites(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_3
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->actionRemoveFromFavourites(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_4
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->actionView(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_5
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->INVALID:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    invoke-direct {v0, p1, v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static validateNamespace(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .prologue
    .line 282
    invoke-static {p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .line 284
    .local v0, "thisNamespace":J
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getNamespace()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 285
    const/4 v2, 0x1

    .line 288
    :goto_0
    return v2

    .line 287
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ GENIEINTENTRESOLVER: Unable to action Intent as the namespace is wrong: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x0

    goto :goto_0
.end method
