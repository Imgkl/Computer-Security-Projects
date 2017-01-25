.class public Lcom/genie_connect/android/db/loaders/gamification/TrophyLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "TrophyLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mGameId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "gameId"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 53
    iput-wide p3, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyLoader;->mGameId:J

    .line 54
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/TrophyLoader;->mGameId:J

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbTrophies;->getTrophiesForGame(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
