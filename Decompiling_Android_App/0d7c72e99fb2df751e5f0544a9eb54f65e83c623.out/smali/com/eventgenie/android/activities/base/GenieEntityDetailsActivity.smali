.class public abstract Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "GenieEntityDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ENTITY_KIND:Ljava/lang/String; = "YOU FORGOT TO OVERRIDE"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field private static final PLACEHOLDER:Ljava/lang/String; = "YOU FORGOT TO OVERRIDE"


# instance fields
.field private mAddToFavouritesMessage:Ljava/lang/String;

.field private mBookmarkActionAvailable:Z

.field private mCurrentEntityId:J

.field private mCurrentEntityName:Ljava/lang/String;

.field private mCurrentShareUrl:Ljava/lang/String;

.field private mFavouriteActionAvailable:Z

.field private mFavouriteDeletable:Z

.field private mHasNote:Z

.field private mHeader:Landroid/view/ViewGroup;

.field private mInteractiveMapsPresent:Z

.field private mIsBookmarked:Z

.field private mIsFavourite:Z

.field private mLogoUrl:Ljava/lang/String;

.field private mNoteActionAvailable:Z

.field protected mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

.field private mRemoveFromFavouritesMessage:Ljava/lang/String;

.field protected final mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

.field protected mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

.field protected mWaitForSurveysEventFromLSS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentEntityId:J

    .line 125
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mInteractiveMapsPresent:Z

    .line 141
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

    .line 173
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    return v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    return p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
    .param p1, "x1"    # Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .param p2, "x2"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->checkForClashesAndFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
    .param p1, "x1"    # Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    return-void
.end method

.method private checkClashOfSessions()Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    .locals 3

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getAgendaItemStartTime()Ljava/util/Date;

    move-result-object v1

    .line 670
    .local v1, "startTime":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getAgendaItemEndTime()Ljava/util/Date;

    move-result-object v0

    .line 672
    .local v0, "endTime":Ljava/util/Date;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 673
    :cond_0
    const-class v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {v2, v1, v0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->hasAgendaClash(Ljava/util/Date;Ljava/util/Date;)Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    move-result-object v2

    .line 676
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->NoClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    goto :goto_0
.end method

.method private checkForClashesAndFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
    .locals 9
    .param p1, "favManager"    # Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .param p2, "updatedListener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    .prologue
    const/4 v1, 0x1

    .line 586
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isToCheckClashing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->checkClashOfSessions()Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    move-result-object v7

    .line 592
    .local v7, "clashResult":Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->isAllowClashingSessions()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->BlockingClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    if-ne v7, v0, :cond_0

    .line 596
    sget v0, Lcom/eventgenie/android/R$string;->favourite_failed_blocking_clash:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 640
    .end local v7    # "clashResult":Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    :goto_0
    return-void

    .line 597
    .restart local v7    # "clashResult":Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    :cond_0
    sget-object v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->NoClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    if-eq v7, v0, :cond_2

    .line 600
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_CLASHING_SESSIONS_ALERT:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "clashingSessionsAlertLabel":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 602
    const-string v2, "This event will clash with another. do you still want to schedule it ?"

    .line 605
    :cond_1
    const-string v1, ""

    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    sget v4, Lcom/eventgenie/android/R$string;->alert_dialog_cancel:I

    new-instance v5, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;

    invoke-direct {v5, p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    new-instance v6, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$7;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$7;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueYesNoCustom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v8

    .line 630
    .local v8, "dialogClashingConfirmation":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 633
    .end local v2    # "clashingSessionsAlertLabel":Ljava/lang/String;
    .end local v8    # "dialogClashingConfirmation":Landroid/app/AlertDialog;
    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    goto :goto_0

    .line 636
    .end local v7    # "clashResult":Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    :cond_3
    const-string v0, "^ ENTITY: is not to display the clash alert dialog, will just set as (un)favourite"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 637
    invoke-direct {p0, p1, v1, p2}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    goto :goto_0
.end method

.method private findActivityStreamFragment()Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 345
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;

    if-eqz v2, :cond_0

    .line 346
    check-cast v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;

    .line 350
    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRemoveMessageFromFavouriteDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 8
    .param p1, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 650
    const-string v1, ""

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mRemoveFromFavouritesMessage:Ljava/lang/String;

    sget v3, Lcom/eventgenie/android/R$string;->button_remove:I

    sget v4, Lcom/eventgenie/android/R$string;->button_cancel:I

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueYesNoCustom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v7

    .line 660
    .local v7, "dialogueYesNo":Landroid/app/AlertDialog;
    return-object v7
.end method

.method private isToCheckClashing()Z
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->isEnableScheduleConflictNotice()Z

    move-result v0

    return v0
.end method

.method private isUseRemoveConfirmationDialog()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mRemoveFromFavouritesMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    const/4 v0, 0x1

    .line 798
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBookmarkClick(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
    .locals 6
    .param p1, "favManager"    # Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .param p2, "isBookmark"    # Z
    .param p3, "listener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    .prologue
    .line 744
    const/4 v3, 0x0

    .line 746
    .local v3, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subsessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 752
    :cond_1
    if-eqz v3, :cond_2

    .line 754
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->setEntityBookmarked(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    .line 762
    :goto_0
    return-void

    .line 759
    :cond_2
    const-string v0, "^ ENTITY_DETAILS_ACTIVITY: The entity must be one of Session or subsession to bookmark"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 760
    invoke-interface {p3}, Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;->favouritingFailed()V

    goto :goto_0
.end method

.method private setFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
    .locals 6
    .param p1, "favManager"    # Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .param p2, "fav"    # Z
    .param p3, "listener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->setEntityFavourited(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    .line 777
    return-void
.end method


# virtual methods
.method protected displayFavButtonIfApplicable(Z)V
    .locals 3
    .param p1, "visibleOverride"    # Z

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isFavouriteActionAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isBookmarkActionAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    :cond_0
    move v0, p1

    .line 214
    .local v0, "show":Z
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionFavourite(ZZ)V

    .line 215
    return-void

    .line 211
    .end local v0    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "show":Z
    goto :goto_0

    .line 214
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected displayNoteButtonIfApplicable(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isNoteActionAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    move v0, p1

    .line 226
    .local v0, "action":Z
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    invoke-virtual {v1, v0, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionNote(ZZ)V

    .line 227
    return-void

    .line 221
    .end local v0    # "action":Z
    :cond_0
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    if-eqz v1, :cond_1

    .line 222
    move v0, p1

    .restart local v0    # "action":Z
    goto :goto_0

    .line 224
    .end local v0    # "action":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "action":Z
    goto :goto_0
.end method

.method protected doReloadAfterSurveysSynced()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected getAgendaItemEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAgendaItemStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityId()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentEntityId:J

    return-wide v0
.end method

.method public abstract getEntityKind()Ljava/lang/String;
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-wide v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentEntityId:J

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentEntityName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentEntityName:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
.end method

.method public getHasNote()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    return v0
.end method

.method protected getHeader()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getIsBookmarked()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    return v0
.end method

.method public getIsFavourite()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    return v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getmPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    return-object v0
.end method

.method protected isBookmarkActionAvailable()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mBookmarkActionAvailable:Z

    return v0
.end method

.method protected isCursorValid(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 284
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    sget v0, Lcom/eventgenie/android/R$string;->sorry_nothing_found:I

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ ENTITY: Was asked to open invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    .line 289
    :cond_1
    return v0
.end method

.method protected isFavouriteActionAvailable()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mFavouriteActionAvailable:Z

    return v0
.end method

.method protected isFavouriteDeletable()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mFavouriteDeletable:Z

    return v0
.end method

.method protected isNoteActionAvailable()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mNoteActionAvailable:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 316
    const/16 v1, 0x2711

    if-ne p1, v1, :cond_1

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ ENTITY: onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 318
    packed-switch p2, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    .line 321
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->toggleNote(Z)V

    goto :goto_0

    .line 324
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    .line 325
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->toggleNote(Z)V

    goto :goto_0

    .line 332
    :cond_1
    const/16 v1, 0x158

    if-ne p1, v1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 333
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->findActivityStreamFragment()Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;

    move-result-object v0

    .line 335
    .local v0, "fragment":Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->refresh()V

    goto :goto_0

    .line 339
    .end local v0    # "fragment":Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityStreamPost(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 354
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "is_home"

    invoke-virtual {v8, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const/16 v1, 0x1389

    invoke-virtual {p0, v8, v1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 360
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .line 361
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    const/4 v7, 0x0

    .line 362
    .local v7, "entityType":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exhibitors"

    if-ne v1, v2, :cond_3

    .line 364
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 365
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorDetails(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 395
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v7, :cond_0

    .line 396
    const-string v1, "ENTITY_EXTRA"

    new-instance v2, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-direct {v2, p0, v7, v0}, Lcom/eventgenie/android/container/CursorEntityWrapper;-><init>(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    const/16 v1, 0x158

    invoke-virtual {p0, v8, v1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 367
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visitors"

    if-ne v1, v2, :cond_4

    .line 368
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 369
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitors(JLjava/lang/String;ZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_1

    .line 371
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "products"

    if-ne v1, v2, :cond_5

    .line 372
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 373
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbProducts;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_1

    .line 375
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "poi"

    if-ne v1, v2, :cond_6

    .line 376
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 377
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbPoi;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_1

    .line 379
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadables"

    if-ne v1, v2, :cond_7

    .line 380
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 381
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadable(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto/16 :goto_1

    .line 383
    :cond_7
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessions"

    if-ne v1, v2, :cond_8

    .line 384
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 385
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbSessions;->getSession(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto/16 :goto_1

    .line 387
    :cond_8
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subsessions"

    if-ne v1, v2, :cond_9

    .line 388
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 389
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSubSessions()Lcom/genie_connect/android/db/access/DbSubsessions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbSubsessions;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto/16 :goto_1

    .line 391
    :cond_9
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "speakers"

    if-ne v1, v2, :cond_2

    .line 392
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 393
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbSpeakers;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected onBookmarSet(Z)V
    .locals 0
    .param p1, "isBookmarked"    # Z

    .prologue
    .line 815
    return-void
.end method

.method public onBookmarkClick()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 694
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v6

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    iget-object v9, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v6, v7, v8, v9}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v1

    .line 699
    .local v1, "isAllowed":Z
    if-nez v1, :cond_1

    .line 703
    iget-object v6, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 704
    iget-object v4, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, "message":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 733
    .end local v3    # "message":Ljava/lang/String;
    :goto_1
    return-void

    .line 706
    :cond_0
    sget v6, Lcom/eventgenie/android/R$string;->msg_no_permissions_to_bookmark:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0

    .line 714
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    const-class v6, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    .line 715
    .local v0, "favManager":Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    new-instance v2, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)V

    .line 730
    .local v2, "listener":Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getIsBookmarked()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    invoke-direct {p0, v0, v4, v2}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onBookmarkClick(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method protected onCheckAllowedToChangeFavourite(Z)Z
    .locals 1
    .param p1, "fav"    # Z

    .prologue
    .line 802
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "LSS_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 201
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onDestroy()V

    .line 181
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mUpdatedLiveSyncSurveys:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    return-void
.end method

.method public onFavouriteClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(Z)V

    .line 405
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFavouriteSet(Z)V
    .locals 0
    .param p1, "isFavourite"    # Z

    .prologue
    .line 807
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 410
    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->showFullScreenImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public onNoteClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 418
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/genie_connect/android/db/access/DbNotes;->getNoteId(Ljava/lang/String;J)J

    move-result-wide v2

    .line 422
    .local v2, "noteId":J
    const-string v4, "NOTE_ASSOC_ENTITY_NAME"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v4, "NOTE_ASSOC_ENTITY_IMAGEURL"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v4, "NOTE_ASSOC_ENTITY_TYPE"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v4, "NOTE_ASSOC_ENTITY_ID"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityId()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 434
    const-string v4, "NOTE_ASSOC_ENTITY_IS_FAV"

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 437
    const-string v4, "NOTE_ASSOC_ENTITY_HAS_NOTE"

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v4, v2, v3, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 447
    .local v1, "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x2711

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 448
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onResume()V

    .line 188
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "visitorsurveys"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onViewMapClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mInteractiveMapsPresent:Z

    if-eqz v0, :cond_0

    .line 453
    new-instance v1, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 467
    :goto_0
    return-void

    .line 457
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->maps_uninimplemented_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v2, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$2;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected setEntityId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 470
    iput-wide p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentEntityId:J

    .line 471
    return-void
.end method

.method protected setEntityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentEntityName:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setFavourite(Z)V
    .locals 1
    .param p1, "fav"    # Z

    .prologue
    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(ZZ)V

    .line 480
    return-void
.end method

.method public setFavourite(ZZ)V
    .locals 1
    .param p1, "fav"    # Z
    .param p2, "showLoginDialog"    # Z

    .prologue
    .line 483
    sget-object v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {p0, p1, p2, v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(ZZLcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)V

    .line 484
    return-void
.end method

.method public setFavourite(ZZLcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)V
    .locals 11
    .param p1, "fav"    # Z
    .param p2, "showLoginDialog"    # Z
    .param p3, "permissionGroupAction"    # Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    .prologue
    const/4 v8, 0x0

    .line 488
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v6

    invoke-virtual {v5, p0, v6, p2}, Lcom/genie_connect/android/security/VisitorLoginManager;->doCheckFavouriteSecurity(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCheckAllowedToChangeFavourite(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v5

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v5, v6, p3, v7}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v2

    .line 502
    .local v2, "isAllowed":Z
    if-nez v2, :cond_3

    .line 506
    iget-object v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    iget-object v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "message":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 509
    .end local v4    # "message":Ljava/lang/String;
    :cond_2
    sget v5, Lcom/eventgenie/android/R$string;->msg_no_permissions_to_favourite:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    move-result-object v9

    sget-object v10, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v8, v9, v10}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "message":Ljava/lang/String;
    goto :goto_1

    .line 525
    .end local v4    # "message":Ljava/lang/String;
    :cond_3
    const-class v5, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    .line 526
    .local v1, "favManager":Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    new-instance v3, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Z)V

    .line 542
    .local v3, "listener":Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    if-eqz p1, :cond_5

    .line 546
    iget-object v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mAddToFavouritesMessage:Ljava/lang/String;

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    .local v0, "dialogAddFavouritesMessage":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mAddToFavouritesMessage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 550
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$4;

    invoke-direct {v6, p0, v1, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$4;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 561
    .end local v0    # "dialogAddFavouritesMessage":Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->checkForClashesAndFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    goto/16 :goto_0

    .line 568
    :cond_5
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isUseRemoveConfirmationDialog()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 571
    new-instance v5, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$5;

    invoke-direct {v5, p0, v1, p1, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$5;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    invoke-direct {p0, v5, v8}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getRemoveMessageFromFavouriteDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 579
    :cond_6
    invoke-direct {p0, v1, p1, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    goto/16 :goto_0
.end method

.method protected setHeader(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "header"    # Landroid/view/ViewGroup;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHeader:Landroid/view/ViewGroup;

    .line 819
    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mLogoUrl:Ljava/lang/String;

    .line 823
    return-void
.end method

.method protected setShareUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mCurrentShareUrl:Ljava/lang/String;

    .line 828
    return-void
.end method

.method protected setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLcom/genie_connect/common/db/entityfactory/EGEntity;)V
    .locals 10
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "enableSharing"    # Z
    .param p3, "entity"    # Lcom/genie_connect/common/db/entityfactory/EGEntity;

    .prologue
    const/4 v0, 0x1

    .line 870
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbMaps;->getMaps(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    :goto_0
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mInteractiveMapsPresent:Z

    .line 875
    instance-of v0, p3, Lcom/genie_connect/common/db/model/Session;

    if-eqz v0, :cond_6

    move-object v7, p3

    .line 876
    check-cast v7, Lcom/genie_connect/common/db/model/Session;

    .line 877
    .local v7, "session":Lcom/genie_connect/common/db/model/Session;
    iget-object v0, v7, Lcom/genie_connect/common/db/model/Session;->addToAgendaMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mAddToFavouritesMessage:Ljava/lang/String;

    .line 878
    iget-object v0, v7, Lcom/genie_connect/common/db/model/Session;->removeFromAgendaMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mRemoveFromFavouritesMessage:Ljava/lang/String;

    .line 879
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v0

    iget-object v1, v7, Lcom/genie_connect/common/db/model/Session;->permissionGroup:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    .line 891
    .end local v7    # "session":Lcom/genie_connect/common/db/model/Session;
    :cond_1
    :goto_1
    instance-of v0, p3, Lcom/genie_connect/common/db/model/interfaces/Favouritable;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 892
    check-cast v0, Lcom/genie_connect/common/db/model/interfaces/Favouritable;

    invoke-interface {v0}, Lcom/genie_connect/common/db/model/interfaces/Favouritable;->getIsFavourite()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    .line 895
    :cond_2
    instance-of v0, p3, Lcom/genie_connect/common/db/model/interfaces/Bookmarkable;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 896
    check-cast v0, Lcom/genie_connect/common/db/model/interfaces/Bookmarkable;

    invoke-interface {v0}, Lcom/genie_connect/common/db/model/interfaces/Bookmarkable;->getIsBookmarked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    .line 899
    :cond_3
    instance-of v0, p3, Lcom/genie_connect/common/db/model/interfaces/Notable;

    if-eqz v0, :cond_4

    .line 900
    check-cast p3, Lcom/genie_connect/common/db/model/interfaces/Notable;

    .end local p3    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-interface {p3}, Lcom/genie_connect/common/db/model/interfaces/Notable;->getHasNote()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    .line 903
    :cond_4
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    iget-boolean v4, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZZZZ)V

    .line 904
    return-void

    .line 873
    .restart local p3    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 880
    :cond_6
    instance-of v0, p3, Lcom/genie_connect/common/db/model/Subsession;

    if-eqz v0, :cond_1

    move-object v9, p3

    .line 881
    check-cast v9, Lcom/genie_connect/common/db/model/Subsession;

    .line 882
    .local v9, "subsession":Lcom/genie_connect/common/db/model/Subsession;
    iget-object v0, v9, Lcom/genie_connect/common/db/model/Subsession;->addToAgendaMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mAddToFavouritesMessage:Ljava/lang/String;

    .line 883
    iget-object v0, v9, Lcom/genie_connect/common/db/model/Subsession;->removeFromAgendaMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mRemoveFromFavouritesMessage:Ljava/lang/String;

    .line 886
    const-class v0, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genie_connect/android/repository/SessionRepository;

    .line 887
    .local v8, "sessionRepository":Lcom/genie_connect/android/repository/SessionRepository;
    iget-object v0, v9, Lcom/genie_connect/common/db/model/Subsession;->session:Ljava/lang/Long;

    invoke-virtual {v8, v0}, Lcom/genie_connect/android/repository/SessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Session;

    move-result-object v6

    .line 888
    .local v6, "parentSession":Lcom/genie_connect/common/db/model/Session;
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v0

    iget-object v1, v6, Lcom/genie_connect/common/db/model/Session;->permissionGroup:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    goto :goto_1
.end method

.method protected setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLuk/co/alt236/easycursor/EasyCursor;)V
    .locals 6
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "enableSharing"    # Z
    .param p3, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v0, 0x1

    .line 850
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbMaps;->getMaps(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mInteractiveMapsPresent:Z

    .line 858
    const-string v0, "addToAgendaMessage"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mAddToFavouritesMessage:Ljava/lang/String;

    .line 859
    const-string v0, "removeFromAgendaMessage"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mRemoveFromFavouritesMessage:Ljava/lang/String;

    .line 860
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v0

    const-string v1, "permissionGroup"

    invoke-interface {p3, v1}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    .line 861
    const-string v0, "isFavourite"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    .line 862
    const-string v0, "hasNote"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    .line 863
    const-string v0, "isBookmarked"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    .line 865
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    iget-boolean v4, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZZZZ)V

    .line 866
    return-void

    .line 854
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZZZZ)V
    .locals 4
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "enableSharing"    # Z
    .param p3, "isFavourite"    # Z
    .param p4, "hasNote"    # Z
    .param p5, "isBookmarked"    # Z

    .prologue
    const/4 v3, 0x1

    .line 831
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .line 837
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->NOTES:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v1, v0, v2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mNoteActionAvailable:Z

    .line 838
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_STAR:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v1, v0, v2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mFavouriteActionAvailable:Z

    .line 839
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->SESSIONS_FAVOURITING_ENABLED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v1, v0, v2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mBookmarkActionAvailable:Z

    .line 841
    iput-boolean p3, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z

    .line 842
    iput-boolean p5, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z

    .line 843
    iput-boolean p4, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mHasNote:Z

    .line 845
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->displayFavButtonIfApplicable(Z)V

    .line 846
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->displayNoteButtonIfApplicable(Z)V

    .line 847
    return-void
.end method

.method protected showFullScreenImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "line1"    # Ljava/lang/String;
    .param p3, "line2"    # Ljava/lang/String;

    .prologue
    .line 907
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 908
    if-nez p2, :cond_0

    const-string p2, ""

    .line 909
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 911
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 912
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    const-string v2, "photo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 916
    const-string v2, "photo_number"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    const-string v2, "photoset_desc_1"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const-string v2, "photoset_desc_2"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    const-string v2, "extra_hide_view_original"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 922
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
