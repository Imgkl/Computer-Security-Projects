.class public Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "FindPeopleFragmentActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;
    }
.end annotation


# static fields
.field private static final CONTAINER_KEY_GROUPS:Ljava/lang/String; = "group_data"

.field private static final CONTAINER_KEY_PROFILE:Ljava/lang/String; = "profile_data"

.field public static final REQUEST_PROFILE:I = 0x2


# instance fields
.field private final findPeopleReceiver:Landroid/content/BroadcastReceiver;

.field private mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mFavouritePeopleModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field private mGroups:Lorg/json/JSONArray;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mMeetingCredits:Ljava/lang/Integer;

.field private mMeetingDebits:Ljava/lang/Integer;

.field private mMeetingQuotaDetailsJson:Ljava/lang/String;

.field private mMessageCredits:Ljava/lang/Integer;

.field private mProfile:Lorg/json/JSONObject;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 115
    new-instance v0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$1;-><init>(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->findPeopleReceiver:Landroid/content/BroadcastReceiver;

    .line 590
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->populateView()V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->notifyViewAdaptorChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    return-object v0
.end method

.method static synthetic access$302(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$402(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mGroups:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$502(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingCredits:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$602(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMessageCredits:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingDebits:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$802(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingQuotaDetailsJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->updateUI()V

    return-void
.end method

.method private addInterestPages(Lorg/json/JSONObject;Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;
    .param p2, "adapter"    # Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByInterest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getCategories()Lcom/genie_connect/android/db/access/DbCategories;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/DbCategories;->getTagParents()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 131
    .local v0, "cParents":Luk/co/alt236/easycursor/EasyCursor;
    :goto_1
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    const-string v2, "name"

    invoke-interface {v0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "parent":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addInterestsPage(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 136
    .end local v1    # "parent":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->close(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private addInterestsPage(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 140
    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getCategories()Lcom/genie_connect/android/db/access/DbCategories;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/genie_connect/android/db/access/DbCategories;->getTagChildren(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 142
    .local v1, "children":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->close(Landroid/database/Cursor;)V

    .line 166
    :goto_0
    return-object v3

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$layout;->page_generic_list:I

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 148
    .local v3, "page":Landroid/view/View;
    sget v4, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 150
    .local v2, "list":Landroid/widget/ListView;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 151
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    const-string v4, "name"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 160
    :cond_2
    new-instance v4, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;

    const v5, 0x1090010

    invoke-direct {v4, p0, v5, v0}, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->close(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private addKeywordSearchPage(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByCompany()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByKeyword()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByLastName()Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    :goto_0
    return-object v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$layout;->page_visitor_search:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, "page":Landroid/view/View;
    sget v5, Lcom/eventgenie/android/R$id;->search_copy:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, "copy":Landroid/widget/TextView;
    sget v5, Lcom/eventgenie/android/R$id;->search_keyword:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 179
    .local v3, "searchByKeyword":Landroid/widget/EditText;
    sget v5, Lcom/eventgenie/android/R$id;->search_lastname:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 180
    .local v4, "searchByLastName":Landroid/widget/EditText;
    sget v5, Lcom/eventgenie/android/R$id;->search_company:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 182
    .local v2, "searchByCompany":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByKeyword()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->setVisibility(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 183
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByLastName()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->setVisibility(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 184
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByCompany()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->setVisibility(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 186
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->getFindPeopleDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 189
    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 190
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 191
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addNetworkingNotEnabledPage(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->page_generic_text_and_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, "page":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    sget v2, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 200
    .local v0, "button":Landroid/widget/Button;
    sget v2, Lcom/eventgenie/android/R$string;->actionbar_buttons_my_profile:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 201
    new-instance v2, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$2;-><init>(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "Not Enabled"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 210
    return-void
.end method

.method private addNotLoggedInPage(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->page_generic_text_and_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, "page":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    sget v2, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 217
    .local v0, "button":Landroid/widget/Button;
    sget v2, Lcom/eventgenie/android/R$string;->pull_to_refresh_tap_label:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v2, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$3;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$3;-><init>(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    const-string v3, "Login issues"

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 227
    return-void
.end method

.method private addVisitorGroupPage(Lorg/json/JSONArray;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .param p1, "groups"    # Lorg/json/JSONArray;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 230
    iget-object v7, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByVisitorGroup()Z

    move-result v7

    if-nez v7, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v6

    .line 231
    :cond_1
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 235
    .local v4, "max":I
    const/4 v7, 0x1

    if-lt v4, v7, :cond_0

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 242
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    .local v0, "group":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 244
    const-string v7, "name"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 246
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    .end local v0    # "group":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 252
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 254
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$layout;->page_generic_list:I

    invoke-virtual {v7, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 255
    .local v6, "page":Landroid/view/View;
    sget v7, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 257
    .local v3, "list":Landroid/widget/ListView;
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 258
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 259
    new-instance v7, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;

    const v8, 0x1090010

    invoke-direct {v7, p0, v8, v1}, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    invoke-virtual {v3, p2}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getProfile()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 276
    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    if-nez v4, :cond_0

    .line 277
    new-instance v4, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v4}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 282
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->notifyViewAdaptorChanged()V

    .line 284
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 286
    .local v2, "restoredData":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->PROFILE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 288
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->showIndicator(ZZ)V

    .line 289
    new-instance v3, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;-><init>(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 302
    :goto_1
    return-void

    .line 279
    .end local v2    # "restoredData":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v4}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->clear()V

    goto :goto_0

    .restart local v2    # "restoredData":Ljava/lang/Object;
    :cond_1
    move-object v0, v2

    .line 291
    check-cast v0, Lcom/eventgenie/android/container/GenericObjectContainer;

    .line 294
    .local v0, "container":Lcom/eventgenie/android/container/GenericObjectContainer;
    const-string v4, "profile_data"

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/container/GenericObjectContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_2

    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "obj":Ljava/lang/Object;
    :goto_2
    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    .line 297
    const-string v4, "group_data"

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/container/GenericObjectContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 298
    .restart local v1    # "obj":Ljava/lang/Object;
    if-eqz v1, :cond_3

    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "obj":Ljava/lang/Object;
    :goto_3
    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mGroups:Lorg/json/JSONArray;

    .line 300
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->updateUI()V

    goto :goto_1

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    move-object v1, v3

    .line 295
    goto :goto_2

    :cond_3
    move-object v1, v3

    .line 298
    goto :goto_3
.end method

.method private notifyViewAdaptorChanged()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 307
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->notifyDataSetChanged()V

    .line 308
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 310
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    goto :goto_0
.end method

.method private populateView()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->clear()V

    .line 515
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    sget v0, Lcom/eventgenie/android/R$string;->msg_requires_network:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addNotLoggedInPage(Ljava/lang/String;)V

    .line 527
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    sget v0, Lcom/eventgenie/android/R$string;->login_signin_visitor:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addNotLoggedInPage(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getProfile()V

    goto :goto_0
.end method

.method private static setVisibility(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "visible"    # Ljava/lang/Boolean;

    .prologue
    .line 583
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 530
    const-string v3, "^ FINDP: Updating UI"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 534
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    .line 537
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    const-string v4, "showMe"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 538
    .local v2, "showMe":Z
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    const-string v4, "hasSetProfile"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 539
    .local v1, "hasSetProfile":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ FINDP: SM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->clear()V

    .line 544
    if-eqz v1, :cond_1

    if-nez v2, :cond_3

    .line 546
    :cond_1
    if-nez v1, :cond_2

    .line 547
    sget v3, Lcom/eventgenie/android/R$string;->profile_msg_update:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "displayString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addNetworkingNotEnabledPage(Ljava/lang/String;)V

    .line 579
    .end local v0    # "displayString":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->notifyViewAdaptorChanged()V

    .line 580
    return-void

    .line 549
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->profile_msg_update:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->profile_msg_enable:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayString":Ljava/lang/String;
    goto :goto_0

    .line 554
    .end local v0    # "displayString":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    sget v5, Lcom/eventgenie/android/R$string;->find_people_page_keywords:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addKeywordSearchPage(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->find_people_page_keywords:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 557
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mGroups:Lorg/json/JSONArray;

    sget v5, Lcom/eventgenie/android/R$string;->find_people_page_visitor_group:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addVisitorGroupPage(Lorg/json/JSONArray;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->find_people_page_visitor_group:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addInterestPages(Lorg/json/JSONObject;Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;)V

    .line 564
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionResetWithText(Z)V

    .line 565
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionSearchWithText(Z)V

    .line 567
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableRecommendations()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->RECOMENDED_PEOPLE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v3, v4, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 576
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    goto :goto_1

    .line 570
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_group:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->everyone:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton4(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton4(Z)V

    goto :goto_2
.end method


# virtual methods
.method public buildQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    new-instance v0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v0, p0, v1, v2}, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;)V

    .line 270
    .local v0, "builder":Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;
    invoke-virtual {v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->buildQuery()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 319
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 320
    if-nez p2, :cond_2

    .line 321
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_manual_edit"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    :cond_0
    :goto_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getProfile()V

    .line 336
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 337
    return-void

    .line 324
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "profile_json"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onContactsClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mFavouritePeopleModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 341
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    sget v1, Lcom/eventgenie/android/R$layout;->activity_viewpager_findpeople:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->setContentView(I)V

    .line 347
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    .line 349
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->PROFILE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableMyProfile()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 351
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 353
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mFavouritePeopleModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 354
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mFavouritePeopleModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mFavouritePeopleModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->hasValidIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->CONTACTS:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 358
    :cond_0
    new-instance v1, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 359
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 360
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 362
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 363
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 364
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 366
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v0, "userStatusFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.USER_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "com.eventgenie.android.USER_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->findPeopleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 373
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->populateView()V

    .line 374
    return-void
.end method

.method public onCustomButton4Click(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    const/4 v3, 0x0

    const-class v4, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "query"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v2, "search_target"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    const-string v2, "app_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 388
    .end local v0    # "appDataBundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 392
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onDestroy()V

    .line 393
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->findPeopleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->onSearchClick(Landroid/view/View;)V

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoginSuccess()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getProfile()V

    .line 405
    return-void
.end method

.method public onProfileClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 409
    sget-object v3, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PROFILE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {p0, v3}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 410
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "profile_json"

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 415
    const-string v5, "MESSAGE_CREDITS_EXTRA"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMessageCredits:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v5, "MEETING_CREDITS_EXTRA"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingCredits:Ljava/lang/Integer;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const-string v3, "MEETING_DEBITS_EXTRA"

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingDebits:Ljava/lang/Integer;

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v3, "DEBIT_CREDIT_MODE"

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingQuotaDetailsJson:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, "is_manual_edit"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 422
    invoke-static {}, Lcom/genie_connect/android/utils/GenieClipboard;->getIntance()Lcom/genie_connect/android/utils/GenieClipboard;

    move-result-object v3

    const-string v4, "CACHED_CLIPBOARD_BUNDLE"

    invoke-virtual {v3, v4, v0}, Lcom/genie_connect/android/utils/GenieClipboard;->addObject(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 423
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v1, "bundleOnclipboard":Landroid/os/Bundle;
    const-string v3, "cached_bundle_key"

    const-string v4, "CACHED_CLIPBOARD_BUNDLE"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 428
    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 430
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "bundleOnclipboard":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 415
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMessageCredits:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingCredits:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 417
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingDebits:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2
.end method

.method public onResetClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v7, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v7}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getCount()I

    move-result v4

    .line 435
    .local v4, "max":I
    const/4 v7, 0x1

    if-ge v4, v7, :cond_1

    .line 459
    :cond_0
    return-void

    .line 442
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 443
    iget-object v7, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v7, v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v7, v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 446
    .local v6, "view":Landroid/view/View;
    sget v7, Lcom/eventgenie/android/R$string;->find_people_page_keywords:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 447
    sget v7, Lcom/eventgenie/android/R$id;->search_keyword:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 448
    sget v7, Lcom/eventgenie/android/R$id;->search_lastname:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    sget v7, Lcom/eventgenie/android/R$id;->search_company:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_3
    sget v7, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 453
    .local v3, "list":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 454
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 455
    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 464
    new-instance v0, Lcom/eventgenie/android/container/GenericObjectContainer;

    invoke-direct {v0}, Lcom/eventgenie/android/container/GenericObjectContainer;-><init>()V

    .line 465
    .local v0, "container":Lcom/eventgenie/android/container/GenericObjectContainer;
    const-string v1, "profile_data"

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/container/GenericObjectContainer;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    const-string v1, "group_data"

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mGroups:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/container/GenericObjectContainer;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    return-object v0
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    const/4 v3, 0x0

    const-class v4, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "query"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->buildQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v2, "search_target"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    const-string v2, "app_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 485
    .end local v0    # "appDataBundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 490
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 493
    const/4 v1, 0x1

    return v1
.end method

.method public onShowRecommendedPeopleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    const/4 v3, 0x0

    const-class v4, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "query"

    const-string v3, "dummy_query"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v2, "search_target"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    const-string v2, "app_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 508
    .end local v0    # "appDataBundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto :goto_0
.end method
