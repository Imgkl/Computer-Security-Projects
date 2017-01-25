.class public Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "InvalidLocationsLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mOption:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "option"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 16
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mOption:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mOption:Ljava/lang/String;

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS_WITH_ATTACHED_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getLocations()Lcom/genie_connect/android/db/access/DbLocations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbLocations;->getInvalidLocationsWithExhibitorsAttached()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mOption:Ljava/lang/String;

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getLocations()Lcom/genie_connect/android/db/access/DbLocations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbLocations;->getInvalidLocations()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mOption:Ljava/lang/String;

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_VALID_BOOTHS_WITH_NO_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getLocations()Lcom/genie_connect/android/db/access/DbLocations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbLocations;->getValidBoothsWithNoExhibitor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mOption:Ljava/lang/String;

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_EXHIBITORS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithAtLeastOneInvalidLocation()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mOption:Ljava/lang/String;

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_SESSIONS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbSessions;->getSessionsWithoutLocation()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
