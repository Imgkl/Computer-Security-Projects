.class public Lcom/genie_connect/android/db/loaders/CountryListLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "CountryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/loaders/CountryListLoader$1;
    }
.end annotation


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mParentCountry:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "parentCountry"    # Ljava/lang/String;
    .param p4, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 52
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mParentCountry:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic buildCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/CountryListLoader;->buildCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method protected buildCursor()Luk/co/alt236/easycursor/EasyCursor;
    .locals 3

    .prologue
    .line 59
    sget-object v1, Lcom/genie_connect/android/db/loaders/CountryListLoader$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v2, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ COUNTRYENTITYLISTFRAGMENT: No idea what to do with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-object v0

    .line 61
    .end local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_0
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mParentCountry:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbExhibitors;->getCountries()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .restart local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto :goto_0

    .line 64
    .end local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mParentCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbExhibitors;->getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 66
    .restart local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto :goto_0

    .line 68
    .end local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_1
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mParentCountry:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbPoi;->getCountries()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .restart local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto :goto_0

    .line 71
    .end local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/loaders/CountryListLoader;->mParentCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbPoi;->getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 73
    .restart local v0    # "mDataCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
