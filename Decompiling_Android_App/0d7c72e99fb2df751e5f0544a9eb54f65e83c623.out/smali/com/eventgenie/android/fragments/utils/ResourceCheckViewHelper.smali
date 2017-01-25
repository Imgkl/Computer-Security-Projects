.class public Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;
.super Lcom/eventgenie/android/fragments/utils/BaseViewHelper;
.source "ResourceCheckViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$1;,
        Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$ActivityInfoComparator;
    }
.end annotation


# static fields
.field public static final NORMAL_ICONS_ARRAY:[Ljava/lang/String;

.field public static final TROPHY_ICONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/16 v0, 0x56

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "agenda"

    aput-object v1, v0, v3

    const-string v1, "atoz1"

    aput-object v1, v0, v4

    const-string v1, "atoz2"

    aput-object v1, v0, v5

    const-string v1, "attendee"

    aput-object v1, v0, v6

    const-string v1, "barcode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "breakout"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "car"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "checkin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "chair_lift"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cityguide"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "coupons"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "directions"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "download"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "exhibitor"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "event"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "favourites"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "faq"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "featured"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "feedback"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flag"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "floorplan"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "flickr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "food"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "googleplus"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "linkedin"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "maps"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "meeting"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "messages"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "multieventgoback"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "multieventselector"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "myagenda"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "mydownloads"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "myevent"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "mynetwork"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "favexhibitor"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "favspeaker"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mynotes"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "myprivacy"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "myproducts"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "myqrcodes"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "myschedule"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "networking"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "news"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "news_social"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "newspaper"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "opening"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "pinterest"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "product"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "profile"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "qrreader"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "recommendation"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "register1"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "register2"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "route"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "schedule"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "search"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "sector"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "settings"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "share2"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "ski_lift"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "snapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "social"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "speakers"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "ticket"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "train"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "tram"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "travel"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "travel_accom"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "topic"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "tumblr"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "twitter"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "upload"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "venue"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "video"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "wine"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "wifi1"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "workshop"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "youtube"

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->NORMAL_ICONS_ARRAY:[Ljava/lang/String;

    .line 67
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ic_trophy_upload"

    aput-object v1, v0, v3

    const-string v1, "ic_trophy_trophy"

    aput-object v1, v0, v4

    const-string v1, "ic_trophy_treasurehunt"

    aput-object v1, v0, v5

    const-string v1, "ic_trophy_time"

    aput-object v1, v0, v6

    const-string v1, "ic_trophy_social"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ic_trophy_sessions"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ic_trophy_search"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ic_trophy_schedule"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ic_trophy_scanning"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ic_trophy_pictures"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ic_trophy_networking"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ic_trophy_medal"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ic_trophy_location"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ic_trophy_connections"

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->TROPHY_ICONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 86
    sget-object v0, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->NORMAL_ICONS_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->TROPHY_ICONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public addAllDrawablesView()Landroid/view/View;
    .locals 4

    .prologue
    .line 91
    const-string v2, ""

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/config/IconManager;->getDrawables(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->line1:I

    invoke-direct {v0, v2, v3, v1}, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 93
    .local v0, "adapter":Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;
    const-string v2, "All"

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public addAllStringsView()Landroid/view/View;
    .locals 4

    .prologue
    .line 97
    const-string v2, ""

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/config/IconManager;->getStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->line1:I

    invoke-direct {v0, v2, v3, v1}, Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    .local v0, "adapter":Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;
    const-string v2, "Strings"

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public addGenieDrawablesView()Landroid/view/View;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->NORMAL_ICONS_ARRAY:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 107
    .local v0, "adapter":Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;
    const-string v1, "GMICONS"

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public addGenieDrawablesViewOverriden()Landroid/view/View;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->NORMAL_ICONS_ARRAY:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 115
    .local v0, "adapter":Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;
    const-string v1, "GMICONS-OV"

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public addManifestActivitiesView()Landroid/view/View;
    .locals 6

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/BuildInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v2, "list":[Landroid/content/pm/ActivityInfo;
    :goto_0
    new-instance v3, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$ActivityInfoComparator;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$ActivityInfoComparator;-><init>(Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$1;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 129
    new-instance v0, Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$id;->line1:I

    invoke-direct {v0, v3, v4, v2}, Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;-><init>(Landroid/content/Context;I[Landroid/content/pm/ActivityInfo;)V

    .line 130
    .local v0, "adapter":Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;
    const-string v3, "Activities"

    invoke-virtual {p0, v0, v3}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 124
    .end local v0    # "adapter":Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;
    .end local v2    # "list":[Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    new-array v2, v3, [Landroid/content/pm/ActivityInfo;

    .restart local v2    # "list":[Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method

.method public addMappingIconsView()Landroid/view/View;
    .locals 4

    .prologue
    .line 134
    const-string v2, "ic_map_"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/config/IconManager;->getDrawables(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->line1:I

    invoke-direct {v0, v2, v3, v1}, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 140
    .local v0, "adapter":Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;
    const-string v2, "Mapping"

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public addTrophyIcons()Landroid/view/View;
    .locals 5

    .prologue
    .line 144
    const-string v2, "ic_trophy_"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/config/IconManager;->getDrawables(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->line1:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateOverridingColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/ColorFilter;)V

    .line 151
    .local v0, "adapter":Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;
    const-string v2, "Trophy"

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ResourceCursorTreeAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
