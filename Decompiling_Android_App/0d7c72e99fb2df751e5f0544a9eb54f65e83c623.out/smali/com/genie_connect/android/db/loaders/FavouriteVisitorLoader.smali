.class public Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "FavouriteVisitorLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mIsFavourite:Z

.field private final mSearchFilter:Ljava/lang/String;

.field private final mVisitorId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;JLjava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "id"    # J
    .param p5, "searchFilter"    # Ljava/lang/String;
    .param p6, "favorite"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 56
    iput-wide p3, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mVisitorId:J

    .line 57
    iput-object p5, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mSearchFilter:Ljava/lang/String;

    .line 58
    iput-boolean p6, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mIsFavourite:Z

    .line 59
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 67
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;

    move-result-object v1

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mVisitorId:J

    iget-object v4, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mSearchFilter:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;->mIsFavourite:Z

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
