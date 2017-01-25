.class public Lcom/genie_connect/android/db/loaders/ExhibitorLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "ExhibitorLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mDisplayExpandedLocation:Z

.field private final mFilter:Ljava/lang/String;

.field private final mHideLocation:Z

.field private final mIsFavourite:Z

.field private final mIsFeatured:Z

.field private final mIsSortBySequence:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;ZZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "displayExpandedLocation"    # Z
    .param p5, "isFeatured"    # Z
    .param p6, "isFavorite"    # Z
    .param p7, "hideLocation"    # Z
    .param p8, "isSortBySequence"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 68
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mFilter:Ljava/lang/String;

    .line 69
    iput-boolean p6, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsFavourite:Z

    .line 70
    iput-boolean p5, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsFeatured:Z

    .line 71
    iput-boolean p7, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mHideLocation:Z

    .line 72
    iput-boolean p4, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mDisplayExpandedLocation:Z

    .line 73
    iput-boolean p8, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsSortBySequence:Z

    .line 74
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mDisplayExpandedLocation:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mFilter:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsFeatured:Z

    iget-boolean v3, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsFavourite:Z

    iget-boolean v4, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mHideLocation:Z

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitors(Ljava/lang/String;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mFilter:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsFeatured:Z

    iget-boolean v10, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsFavourite:Z

    iget-boolean v11, p0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;->mIsSortBySequence:Z

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    move-object v8, v2

    move v12, v5

    invoke-virtual/range {v1 .. v12}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_0
.end method
