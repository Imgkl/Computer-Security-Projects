.class public Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;,
        Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;
    }
.end annotation


# static fields
.field public static final CACHED_CLIPBOARD_BUNDLE:Ljava/lang/String; = "CACHED_CLIPBOARD_BUNDLE"

.field public static final DEBIT_CREDIT_MODE_JSON_EXTRA:Ljava/lang/String; = "DEBIT_CREDIT_MODE"

.field public static final IS_MANUAL_EDIT_EXTRA:Ljava/lang/String; = "is_manual_edit"

.field public static final MEETING_CREDITS_EXTRA:Ljava/lang/String; = "MEETING_CREDITS_EXTRA"

.field public static final MEETING_DEBITS_EXTRA:Ljava/lang/String; = "MEETING_DEBITS_EXTRA"

.field public static final MESSAGE_CREDITS_EXTRA:Ljava/lang/String; = "MESSAGE_CREDITS_EXTRA"

.field public static final PROFILE_JSON_EXTRA:Ljava/lang/String; = "profile_json"

.field private static final REQUEST_CODE_CROP_PICTURE:I = 0x42

.field private static final REQUEST_CODE_SELECT_PICTURE:I = 0x63

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x21


# instance fields
.field private mBioPlaceHolder:Landroid/widget/TextView;

.field private mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

.field private mCbEnableNetworking:Landroid/widget/CheckBox;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

.field private mEditBio:Landroid/widget/TextView;

.field private mEditReasonForAttending:Landroid/widget/TextView;

.field private mFindPeopleConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

.field private mImageViewMugshot:Landroid/widget/ImageView;

.field private mInterestListTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsManualEdit:Z

.field private mListView:Landroid/widget/ListView;

.field private mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mMugshotPath:Ljava/lang/String;

.field private mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

.field private mProfileJSON:Ljava/lang/String;

.field private mProfileUpdateEnabled:Z

.field private mTableAddress:Landroid/widget/TableLayout;

.field private mTableContact:Landroid/widget/TableLayout;

.field private mTableOrganisation:Landroid/widget/TableLayout;

.field private mUserProfile:Lorg/json/JSONObject;

.field private mVisitorId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    .line 1090
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mImageViewMugshot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->doUpdate()V

    return-void
.end method

.method static synthetic access$1002(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mIsManualEdit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->cancelCallback()V

    return-void
.end method

.method static synthetic access$1200(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
    .param p1, "x1"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->okCallback(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->dispatchTakePictureIntent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->dispatchSelectPictureIntent(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->clearMugshot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mVisitorId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$702(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->loadPhotoFromProfile(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCbEnableNetworking:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private addInterestAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;
    .locals 4
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getCategories()Lcom/genie_connect/android/db/access/DbCategories;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/genie_connect/android/db/access/DbCategories;->getTagChildren(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 175
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->close(Landroid/database/Cursor;)V

    .line 177
    const/4 v2, 0x0

    .line 189
    :goto_0
    return-object v2

    .line 180
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->close(Landroid/database/Cursor;)V

    .line 189
    new-instance v2, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;

    const v3, 0x1090010

    invoke-direct {v2, p0, v3, v0}, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    goto :goto_0
.end method

.method private addInterests(Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 196
    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mFindPeopleConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByInterest()Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-boolean v4, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-nez v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    invoke-direct {p0, v4, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->addInterestsReadonly(Lorg/json/JSONObject;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getCategories()Lcom/genie_connect/android/db/access/DbCategories;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/DbCategories;->getTagParents()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 206
    .local v0, "cParents":Luk/co/alt236/easycursor/EasyCursor;
    :goto_1
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 207
    const-string v4, "name"

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "parent":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->addInterestAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;

    move-result-object v2

    .line 209
    .local v2, "lAdapter":Landroid/widget/ListAdapter;
    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$layout;->list_section_header_holo:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 212
    .local v1, "header":Landroid/view/View;
    invoke-static {v1, v3, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;Ljava/lang/String;Landroid/app/Activity;)V

    .line 213
    invoke-virtual {p1, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 214
    invoke-virtual {p1, v2}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    .end local v1    # "header":Landroid/view/View;
    :cond_2
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 218
    .end local v2    # "lAdapter":Landroid/widget/ListAdapter;
    .end local v3    # "parent":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->close(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private addInterestsReadonly(Lorg/json/JSONObject;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 7
    .param p1, "visitorObject"    # Lorg/json/JSONObject;
    .param p2, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 224
    const-string v5, "interests"

    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v5, p1, v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 247
    :cond_0
    return-void

    .line 229
    :cond_1
    const-string v5, "interests"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 231
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->populateInternalInterestsListTree(Lorg/json/JSONArray;)V

    .line 234
    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 235
    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 238
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 240
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 241
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 242
    .local v4, "tagName":Ljava/lang/String;
    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getText(Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cancelCallback()V
    .locals 4

    .prologue
    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "is_manual_edit"

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mIsManualEdit:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->finish()V

    .line 256
    return-void
.end method

.method private clearMugshot()Z
    .locals 4

    .prologue
    .line 259
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 268
    .local v1, "res":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ clearMugshot("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 269
    return v1

    .line 265
    .end local v1    # "res":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private dispatchCropPictureIntent(ILjava/lang/String;)V
    .locals 3
    .param p1, "actionCode"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 273
    if-nez p2, :cond_0

    .line 274
    const-string v1, "^ dispatchCropPictureIntent(). File path is null"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/ImageEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INPUT_FILE_PATH_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "OUTPUT_FILE_PATH_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "FIXED_ASPECT_RATIO_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string v1, "MAX_OUTPUT_SIZE_KEY"

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private dispatchSelectPictureIntent(I)V
    .locals 2
    .param p1, "actionCode"    # I

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->clearMugshot()Z

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    return-void
.end method

.method private dispatchTakePictureIntent(I)V
    .locals 4
    .param p1, "actionCode"    # I

    .prologue
    .line 295
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/intents/IntentCheck;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->clearMugshot()Z

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 302
    :cond_0
    sget v1, Lcom/eventgenie/android/R$string;->no_camera_found:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method private doUpdate()V
    .locals 11

    .prologue
    .line 310
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableContact:Landroid/widget/TableLayout;

    invoke-direct {p0, v8}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->validateFields(Landroid/widget/TableLayout;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 367
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyProfileUpdate(Landroid/content/Context;)Z

    .line 314
    new-instance v7, Lcom/eventgenie/android/ui/help/VisitorHelper;

    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-direct {v7, p0, v8}, Lcom/eventgenie/android/ui/help/VisitorHelper;-><init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V

    .line 315
    .local v7, "vUtils":Lcom/eventgenie/android/ui/help/VisitorHelper;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v6, "payloadJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "showMe"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCbEnableNetworking:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 319
    const-string v8, "fullDescription"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditBio:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v8, "hasSetProfile"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 322
    const-string v8, "address"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v8, v9, v10}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 324
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableAddress:Landroid/widget/TableLayout;

    const-string v9, "address"

    invoke-virtual {v7, v6, v8, v9}, Lcom/eventgenie/android/ui/help/VisitorHelper;->updateJsonPayloadObject(Lorg/json/JSONObject;Landroid/widget/TableLayout;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 327
    :cond_1
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableOrganisation:Landroid/widget/TableLayout;

    invoke-virtual {v8}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 328
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableOrganisation:Landroid/widget/TableLayout;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/eventgenie/android/ui/help/VisitorHelper;->updateJsonPayloadObject(Lorg/json/JSONObject;Landroid/widget/TableLayout;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 331
    :cond_2
    const-string v8, "attendingDays"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    invoke-virtual {v9}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getSelectedDatesTags()Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v8, "reasonForAttending"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v8, v9, v10}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 336
    const-string v8, "reasonForAttending"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditReasonForAttending:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    :cond_3
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableContact:Landroid/widget/TableLayout;

    const-string v9, "contact"

    invoke-virtual {v7, v6, v8, v9}, Lcom/eventgenie/android/ui/help/VisitorHelper;->updateJsonPayloadObject(Lorg/json/JSONObject;Landroid/widget/TableLayout;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 340
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableOrganisation:Landroid/widget/TableLayout;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/eventgenie/android/ui/help/VisitorHelper;->updateJsonPayloadObject(Lorg/json/JSONObject;Landroid/widget/TableLayout;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 342
    const-string v8, "interests"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v8, v9, v10}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 344
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v4

    .line 345
    .local v4, "len":I
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 346
    .local v1, "checked":Landroid/util/SparseBooleanArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v5, "myInterests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 349
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 350
    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 355
    .local v0, "a":Lorg/json/JSONArray;
    const-string v8, "interests"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "checked":Landroid/util/SparseBooleanArray;
    .end local v3    # "j":I
    .end local v4    # "len":I
    .end local v5    # "myInterests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v8

    sget-object v9, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->enableCustomButton(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Z)V

    .line 358
    new-instance v8, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;

    invoke-direct {v8, p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V

    const/4 v9, 0x1

    new-array v9, v9, [Lorg/json/JSONObject;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v8, v9}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 365
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private loadPhotoFromProfile(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "profile"    # Lorg/json/JSONObject;

    .prologue
    .line 370
    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mImageViewMugshot:Landroid/widget/ImageView;

    .line 372
    const-string v1, "mugShotUrl"

    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v1, p1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "mugShotUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    new-instance v1, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$1;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 384
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private okCallback(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 4
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    .line 387
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "profile_json"

    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 391
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->finish()V

    .line 393
    return-void
.end method

.method private populateAvailabilityCalendar(Landroid/view/View;)V
    .locals 3
    .param p1, "topView"    # Landroid/view/View;

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMeetings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    sget v0, Lcom/eventgenie/android/R$id;->header_availability:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->header_availability_selection:I

    invoke-static {v0, v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 573
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->populate(Lorg/json/JSONObject;Z)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    sget v0, Lcom/eventgenie/android/R$id;->section_availability:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private populateCreditsSection(Landroid/view/View;)V
    .locals 14
    .param p1, "topView"    # Landroid/view/View;

    .prologue
    .line 580
    sget v11, Lcom/eventgenie/android/R$id;->section_credits:I

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 581
    .local v3, "creditsView":Landroid/view/View;
    sget v11, Lcom/eventgenie/android/R$id;->section_daily_quotas:I

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 583
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "MESSAGE_CREDITS_EXTRA"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 584
    .local v7, "messageCredits":I
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "MEETING_CREDITS_EXTRA"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 586
    .local v6, "meetingCredits":I
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMeetings()Z

    move-result v0

    .line 587
    .local v0, "areMeetingsEnabled":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMessages()Z

    move-result v1

    .line 591
    .local v1, "areMessagesEnabled":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ PROFILE: messageCredits : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", enabled? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 592
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ PROFILE: meetingCredits : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", enabled? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 595
    const/4 v11, -0x1

    if-eq v7, v11, :cond_9

    if-eqz v1, :cond_9

    .line 596
    sget v11, Lcom/eventgenie/android/R$id;->text_credits_message:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 598
    .local v10, "tv":Landroid/widget/TextView;
    const/16 v11, 0x270f

    if-eq v7, v11, :cond_0

    const/4 v11, -0x1

    if-ne v7, v11, :cond_8

    .line 599
    :cond_0
    sget-object v2, Lcom/genie_connect/android/utils/string/StringUtils;->INFINITY_SYMBOL:Ljava/lang/String;

    .line 600
    .local v2, "creditString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 607
    .local v5, "isMessagesSectionVisible":Z
    :goto_0
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    .end local v2    # "creditString":Ljava/lang/String;
    .end local v10    # "tv":Landroid/widget/TextView;
    :goto_1
    const/4 v11, -0x1

    if-eq v6, v11, :cond_b

    if-eqz v0, :cond_b

    .line 613
    sget v11, Lcom/eventgenie/android/R$id;->text_credits_meetings:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 616
    .restart local v10    # "tv":Landroid/widget/TextView;
    const/16 v11, 0x270f

    if-eq v6, v11, :cond_1

    const/4 v11, -0x1

    if-ne v6, v11, :cond_a

    .line 617
    :cond_1
    sget-object v2, Lcom/genie_connect/android/utils/string/StringUtils;->INFINITY_SYMBOL:Ljava/lang/String;

    .line 618
    .restart local v2    # "creditString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 625
    .local v4, "isMeetingsSectionVisible":Z
    :goto_2
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    .end local v2    # "creditString":Ljava/lang/String;
    .end local v10    # "tv":Landroid/widget/TextView;
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ PROFILE: isMessagesSectionVisible:     "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 633
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ PROFILE: isMeetingsSectionVisible:     "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 635
    if-nez v4, :cond_2

    .line 636
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ PROFILE: Hiding meetingCredits: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", enabled? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 637
    sget v11, Lcom/eventgenie/android/R$id;->group_credits_meeting:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :cond_2
    if-nez v5, :cond_3

    .line 641
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ PROFILE: Hiding messageCredits: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", enabled? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 642
    sget v11, Lcom/eventgenie/android/R$id;->group_credits_message:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :cond_3
    const/4 v11, -0x1

    if-ne v6, v11, :cond_4

    const/4 v11, -0x1

    if-eq v7, v11, :cond_6

    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    const/16 v11, 0x270f

    if-ne v6, v11, :cond_7

    const/16 v11, 0x270f

    if-ne v7, v11, :cond_7

    .line 649
    :cond_6
    const-string v11, "^ PROFILE: Hiding complete Credits view..."

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 650
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 652
    :cond_7
    return-void

    .line 602
    .end local v4    # "isMeetingsSectionVisible":Z
    .end local v5    # "isMessagesSectionVisible":Z
    .restart local v10    # "tv":Landroid/widget/TextView;
    :cond_8
    int-to-long v8, v7

    .line 603
    .local v8, "res":J
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 604
    .restart local v2    # "creditString":Ljava/lang/String;
    const/4 v5, 0x1

    .restart local v5    # "isMessagesSectionVisible":Z
    goto/16 :goto_0

    .line 609
    .end local v2    # "creditString":Ljava/lang/String;
    .end local v5    # "isMessagesSectionVisible":Z
    .end local v8    # "res":J
    .end local v10    # "tv":Landroid/widget/TextView;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "isMessagesSectionVisible":Z
    goto/16 :goto_1

    .line 620
    .restart local v10    # "tv":Landroid/widget/TextView;
    :cond_a
    int-to-long v8, v6

    .line 621
    .restart local v8    # "res":J
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 622
    .restart local v2    # "creditString":Ljava/lang/String;
    const/4 v4, 0x1

    .restart local v4    # "isMeetingsSectionVisible":Z
    goto/16 :goto_2

    .line 628
    .end local v2    # "creditString":Ljava/lang/String;
    .end local v4    # "isMeetingsSectionVisible":Z
    .end local v8    # "res":J
    .end local v10    # "tv":Landroid/widget/TextView;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "isMeetingsSectionVisible":Z
    goto/16 :goto_3
.end method

.method private populateInternalInterestsListTree(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 656
    if-eqz p1, :cond_3

    .line 661
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    .line 663
    .local v0, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    .line 665
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 666
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 667
    .local v3, "tmpObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 668
    const-string v6, "label"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, "tmpTag":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 671
    const-string v4, ""

    .line 672
    .local v4, "tmpParent":Ljava/lang/String;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 673
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 674
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 675
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v4    # "tmpParent":Ljava/lang/String;
    .end local v5    # "tmpTag":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    .restart local v4    # "tmpParent":Ljava/lang/String;
    .restart local v5    # "tmpTag":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 678
    .local v2, "newSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {v2, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 686
    .end local v2    # "newSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .end local v3    # "tmpObject":Lorg/json/JSONObject;
    .end local v4    # "tmpParent":Ljava/lang/String;
    .end local v5    # "tmpTag":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/eventgenie/android/utils/help/MapUtils;->sortByKey(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mInterestListTree:Ljava/util/Map;

    .line 688
    .end local v0    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private populateQuotaList(Landroid/view/View;Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;)Z
    .locals 4
    .param p1, "topView"    # Landroid/view/View;
    .param p2, "response"    # Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    .prologue
    const/16 v3, 0x8

    .line 691
    new-instance v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;-><init>(Landroid/app/Activity;)V

    .line 692
    .local v0, "maker":Lcom/eventgenie/android/ui/help/QuotaTableHelper;
    invoke-virtual {v0, p1, p2}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->populate(Landroid/view/View;Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;)Z

    move-result v1

    .line 693
    .local v1, "res":Z
    if-eqz v1, :cond_0

    .line 694
    sget v2, Lcom/eventgenie/android/R$id;->section_credits:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :goto_0
    return v1

    .line 696
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->section_daily_quotas:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showUploadDialogue()V
    .locals 7

    .prologue
    .line 706
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 708
    .local v0, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 709
    .local v3, "dlg":Landroid/app/Dialog;
    sget v5, Lcom/eventgenie/android/R$string;->mugshot_use_this_photo:I

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 710
    sget v5, Lcom/eventgenie/android/R$layout;->mugshot_details:I

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 711
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/4 v6, -0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 713
    sget v5, Lcom/eventgenie/android/R$id;->image:I

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 714
    .local v4, "mug":Landroid/widget/ImageView;
    sget v5, Lcom/eventgenie/android/R$id;->mugshot_upload:I

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 715
    .local v2, "buttonUpload":Landroid/widget/Button;
    sget v5, Lcom/eventgenie/android/R$id;->mugshot_discard:I

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 717
    .local v1, "buttonDiscard":Landroid/widget/Button;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    new-instance v5, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;

    invoke-direct {v5, p0, v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    new-instance v5, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;

    invoke-direct {v5, p0, v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 741
    return-void
.end method

.method private updateUI()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->loadPhotoFromProfile(Lorg/json/JSONObject;)V

    .line 745
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->updateUiWithApplicableUiElements()V

    .line 746
    return-void
.end method

.method private updateUiWithApplicableUiElements()V
    .locals 24

    .prologue
    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    invoke-interface {v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v8

    .line 750
    .local v8, "colourForColorFilter":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v9

    .line 751
    .local v9, "cfg":Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;
    new-instance v3, Lcom/eventgenie/android/ui/help/VisitorHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/eventgenie/android/ui/help/VisitorHelper;-><init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V

    .line 752
    .local v3, "vUtils":Lcom/eventgenie/android/ui/help/VisitorHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$layout;->section_myprofile_top:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 754
    .local v22, "topView":Landroid/view/View;
    new-instance v5, Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    sget v4, Lcom/eventgenie/android/R$id;->grid:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/GridLayout;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    .line 756
    new-instance v4, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v4}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 757
    sget v4, Lcom/eventgenie/android/R$id;->list_my_profile:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 761
    sget v4, Lcom/eventgenie/android/R$id;->enable_networking:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCbEnableNetworking:Landroid/widget/CheckBox;

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCbEnableNetworking:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    const-string v6, "showMe"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCbEnableNetworking:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 765
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->populateAvailabilityCalendar(Landroid/view/View;)V

    .line 767
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-nez v4, :cond_0

    .line 768
    sget v4, Lcom/eventgenie/android/R$id;->photo_overlay:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 772
    :cond_0
    sget v4, Lcom/eventgenie/android/R$id;->header_visitor:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    const/4 v6, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/ui/help/VisitorHelper;->populateVisitorHeader(Landroid/view/View;Lorg/json/JSONObject;ZLjava/util/List;)V

    .line 773
    sget v4, Lcom/eventgenie/android/R$id;->header_settings:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->settings_title:I

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mFindPeopleConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableMyProfileEditting()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/eventgenie/android/R$id;->editable_stub:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    move-object/from16 v20, v4

    .line 783
    .local v20, "stub":Landroid/view/ViewStub;
    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 785
    sget v4, Lcom/eventgenie/android/R$id;->visitor_details_block:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 788
    .local v18, "personDetailsBlock":Landroid/view/View;
    sget v4, Lcom/eventgenie/android/R$id;->reasonForAttending:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditReasonForAttending:Landroid/widget/TextView;

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    const-string v5, "reasonForAttending"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 790
    .local v21, "text":Ljava/lang/String;
    const-string v4, "reasonForAttending"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 793
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditReasonForAttending:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    :goto_1
    const/4 v4, 0x1

    sget v5, Lcom/eventgenie/android/R$id;->header_reason_for_attending:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->reason_for_attending_label:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditReasonForAttending:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    .line 814
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "DEBIT_CREDIT_MODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 815
    .local v10, "debitCreditModeJson":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->populateCreditsSection(Landroid/view/View;)V

    .line 834
    :goto_3
    sget v4, Lcom/eventgenie/android/R$id;->tableOrganisation:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableOrganisation:Landroid/widget/TableLayout;

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableOrganisation:Landroid/widget/TableLayout;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-nez v7, :cond_b

    const/4 v7, 0x1

    :goto_4
    invoke-virtual/range {v3 .. v8}, Lcom/eventgenie/android/ui/help/VisitorHelper;->populateTable(Landroid/widget/TableLayout;Ljava/lang/String;Lorg/json/JSONObject;ZI)I

    move-result v4

    if-lez v4, :cond_c

    const/16 v23, 0x1

    .line 837
    .local v23, "visible":Z
    :goto_5
    sget v4, Lcom/eventgenie/android/R$id;->header_organisation:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->contact_details_organisation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableOrganisation:Landroid/widget/TableLayout;

    move/from16 v0, v23

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    .line 841
    sget v4, Lcom/eventgenie/android/R$id;->bio_placeholder:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mBioPlaceHolder:Landroid/widget/TextView;

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mBioPlaceHolder:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 843
    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->getMyProfileDescPlaceholder()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mBioPlaceHolder:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->getMyProfileDescPlaceholder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    :cond_1
    :goto_6
    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableMyProfileEditting()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 851
    sget v4, Lcom/eventgenie/android/R$id;->bio:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditBio:Landroid/widget/TextView;

    .line 856
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditBio:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    const-string v6, "fullDescription"

    invoke-static {v5, v6}, Lcom/eventgenie/android/utils/help/NetworkingUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    const-string v4, "fullDescription"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 859
    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableMyProfileEditting()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditBio:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 860
    const/4 v4, 0x0

    sget v5, Lcom/eventgenie/android/R$id;->header_bio:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->bio_label:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditBio:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    .line 872
    :goto_8
    sget v4, Lcom/eventgenie/android/R$id;->tableAddress:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableAddress:Landroid/widget/TableLayout;

    .line 873
    const-string v4, "address"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableAddress:Landroid/widget/TableLayout;

    const-string v5, "address"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-nez v7, :cond_11

    const/4 v7, 0x1

    :goto_9
    invoke-virtual/range {v3 .. v8}, Lcom/eventgenie/android/ui/help/VisitorHelper;->populateTable(Landroid/widget/TableLayout;Ljava/lang/String;Lorg/json/JSONObject;ZI)I

    move-result v4

    if-lez v4, :cond_12

    const/16 v23, 0x1

    .line 876
    :goto_a
    sget v4, Lcom/eventgenie/android/R$id;->header_address:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->contact_details_address_label:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableAddress:Landroid/widget/TableLayout;

    move/from16 v0, v23

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    .line 884
    :goto_b
    sget v4, Lcom/eventgenie/android/R$id;->tableOtherDetails:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableContact:Landroid/widget/TableLayout;

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableContact:Landroid/widget/TableLayout;

    const-string v5, "contact"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-nez v7, :cond_14

    const/4 v7, 0x1

    :goto_c
    invoke-virtual/range {v3 .. v8}, Lcom/eventgenie/android/ui/help/VisitorHelper;->populateTable(Landroid/widget/TableLayout;Ljava/lang/String;Lorg/json/JSONObject;ZI)I

    move-result v4

    if-lez v4, :cond_15

    const/16 v23, 0x1

    .line 887
    :goto_d
    sget v4, Lcom/eventgenie/android/R$id;->header_contact_details:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->contact_details_label:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableContact:Landroid/widget/TableLayout;

    move/from16 v0, v23

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->addInterests(Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 898
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-eqz v4, :cond_18

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    const-string v5, "interests"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 902
    .local v13, "interestsArray":Lorg/json/JSONArray;
    if-eqz v13, :cond_18

    .line 905
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 907
    .local v14, "interestsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_e
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v15, v4, :cond_16

    .line 908
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 909
    .local v17, "o":Lorg/json/JSONObject;
    if-eqz v17, :cond_2

    .line 910
    const-string v4, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 911
    .local v12, "interestName":Ljava/lang/String;
    invoke-static {v12}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 912
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v12    # "interestName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 780
    .end local v10    # "debitCreditModeJson":Ljava/lang/String;
    .end local v13    # "interestsArray":Lorg/json/JSONArray;
    .end local v14    # "interestsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "j":I
    .end local v17    # "o":Lorg/json/JSONObject;
    .end local v18    # "personDetailsBlock":Landroid/view/View;
    .end local v20    # "stub":Landroid/view/ViewStub;
    .end local v21    # "text":Ljava/lang/String;
    .end local v23    # "visible":Z
    :cond_3
    sget v4, Lcom/eventgenie/android/R$id;->not_editable_stub:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    move-object/from16 v20, v4

    goto/16 :goto_0

    .line 796
    .restart local v18    # "personDetailsBlock":Landroid/view/View;
    .restart local v20    # "stub":Landroid/view/ViewStub;
    .restart local v21    # "text":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-nez v4, :cond_5

    .line 797
    const/4 v4, 0x0

    sget v5, Lcom/eventgenie/android/R$id;->header_reason_for_attending:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->reason_for_attending_label:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditReasonForAttending:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    .line 801
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditReasonForAttending:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 807
    :cond_6
    const/4 v4, 0x0

    sget v5, Lcom/eventgenie/android/R$id;->header_reason_for_attending:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->reason_for_attending_label:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditReasonForAttending:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    goto/16 :goto_2

    .line 818
    .restart local v10    # "debitCreditModeJson":Ljava/lang/String;
    :cond_7
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 819
    .local v11, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    invoke-virtual {v11, v10, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    .line 820
    .local v19, "response":Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    if-nez v19, :cond_8

    .line 821
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->populateCreditsSection(Landroid/view/View;)V

    goto/16 :goto_3

    .line 823
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingQuotaType()I

    move-result v4

    sget-object v5, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_PER_EVENT:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 824
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->populateQuotaList(Landroid/view/View;Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;)Z

    goto/16 :goto_3

    .line 825
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingQuotaType()I

    move-result v4

    sget-object v5, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_PER_DAY:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 826
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->populateQuotaList(Landroid/view/View;Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;)Z

    goto/16 :goto_3

    .line 828
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->populateCreditsSection(Landroid/view/View;)V

    goto/16 :goto_3

    .line 835
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v19    # "response":Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 846
    .restart local v23    # "visible":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mBioPlaceHolder:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 853
    :cond_e
    sget v4, Lcom/eventgenie/android/R$id;->bio:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditBio:Landroid/widget/TextView;

    goto/16 :goto_7

    .line 863
    :cond_f
    sget v4, Lcom/eventgenie/android/R$id;->header_bio:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->bio_label:I

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    goto/16 :goto_8

    .line 867
    :cond_10
    const/4 v4, 0x0

    sget v5, Lcom/eventgenie/android/R$id;->header_bio:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->bio_label:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mEditBio:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    goto/16 :goto_8

    .line 874
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 879
    :cond_13
    const/4 v4, 0x0

    sget v5, Lcom/eventgenie/android/R$id;->header_address:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->contact_details_address_label:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mTableAddress:Landroid/widget/TableLayout;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    goto/16 :goto_b

    .line 885
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_d

    .line 917
    .restart local v13    # "interestsArray":Lorg/json/JSONArray;
    .restart local v14    # "interestsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "j":I
    :cond_16
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v16

    .line 919
    .local v16, "len":I
    const/4 v15, 0x0

    :goto_f
    move/from16 v0, v16

    if-ge v15, v0, :cond_18

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v15}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v15, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 919
    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 927
    .end local v13    # "interestsArray":Lorg/json/JSONArray;
    .end local v14    # "interestsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "j":I
    .end local v16    # "len":I
    :cond_18
    return-void
.end method

.method private validateField(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "edit"    # Landroid/widget/TextView;
    .param p2, "regexp"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 932
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "value":Ljava/lang/String;
    const-string v3, "((https?):(//)+[\\w\\d:\\*#!@%/;$()~_?\\+-=\\.&]*)"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 936
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 937
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    const-string v3, "((https?):(//)+[\\w\\d:\\*#!@%/;$()~_?\\+-=\\.&]*)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 971
    :cond_1
    :goto_0
    return v1

    .line 946
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 947
    sget v1, Lcom/eventgenie/android/R$string;->error_invalid_web_url:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move v1, v2

    .line 950
    goto :goto_0

    .line 956
    :cond_3
    sget-object v3, Lcom/eventgenie/android/utils/constants/RegularExpressions;->HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 957
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 958
    const-string v3, "[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 961
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 962
    sget v1, Lcom/eventgenie/android/R$string;->error_invalid_web_email:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move v1, v2

    .line 965
    goto :goto_0
.end method

.method private validateFields(Landroid/widget/TableLayout;)Z
    .locals 7
    .param p1, "table"    # Landroid/widget/TableLayout;

    .prologue
    const/4 v5, 0x1

    .line 975
    const/4 v2, 0x1

    .line 976
    .local v2, "res":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 977
    invoke-virtual {p1, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 979
    .local v3, "row":Landroid/widget/TableRow;
    invoke-virtual {v3}, Landroid/widget/TableRow;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 980
    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 982
    .local v0, "data":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 983
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 985
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v6, "www"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 986
    const-string v6, "((https?):(//)+[\\w\\d:\\*#!@%/;$()~_?\\+-=\\.&]*)"

    invoke-direct {p0, v0, v6}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->validateField(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v2

    .line 991
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    .line 992
    const/4 v5, 0x0

    .line 997
    .end local v0    # "data":Landroid/widget/TextView;
    .end local v3    # "row":Landroid/widget/TableRow;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_1
    return v5

    .line 987
    .restart local v0    # "data":Landroid/widget/TextView;
    .restart local v3    # "row":Landroid/widget/TableRow;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_2
    const-string v6, "email"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 988
    const-string v6, "[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?"

    invoke-direct {p0, v0, v6}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->validateField(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 976
    .end local v0    # "data":Landroid/widget/TextView;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x42

    const/4 v4, -0x1

    .line 398
    sparse-switch p1, :sswitch_data_0

    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 400
    :sswitch_0
    if-ne p2, v4, :cond_0

    .line 401
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->showUploadDialogue()V

    goto :goto_0

    .line 407
    :sswitch_1
    if-ne p2, v4, :cond_0

    .line 410
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 411
    .local v2, "imageUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 415
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :try_start_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    const/16 v4, 0x42

    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->dispatchCropPictureIntent(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 427
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageUri":Landroid/net/Uri;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "^ PROFILE: Error opening image from gallery."

    invoke-static {v4, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 429
    sget v4, Lcom/eventgenie/android/R$string;->message_there_was_a_problem_opening_the_selected_image:I

    sget-object v5, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "imageUri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 417
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "^ PROFILE: Error compressing mugshot!"

    invoke-static {v4, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 425
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    const-string v4, "^ PROFILE: Mugshot not found!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 437
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageUri":Landroid/net/Uri;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :sswitch_2
    if-ne p2, v4, :cond_0

    .line 438
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->dispatchCropPictureIntent(ILjava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    const-string v4, "Error: The Camera application did not save an image..."

    sget-object v5, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 446
    const-string v4, "^ PROFILE: Mugshot not found!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x42 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->cancelCallback()V

    .line 458
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .prologue
    .line 462
    invoke-static {p0, p2}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyNetworkingOptinChanged(Landroid/content/Context;Z)Z

    .line 463
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 467
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 478
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 479
    sget v2, Lcom/eventgenie/android/R$layout;->activity_myprofile:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->setContentView(I)V

    .line 481
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFindPeople()Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mFindPeopleConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    .line 482
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 483
    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mFindPeopleConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableMyProfileEditting()Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    .line 484
    new-instance v2, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ PROFILE: Profile editable? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->profile_title:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mugshot.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ PROFILE: The mugshot will be saved at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "CACHED_CLIPBOARD_BUNDLE"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cached_bundle_key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    invoke-static {}, Lcom/genie_connect/android/utils/GenieClipboard;->getIntance()Lcom/genie_connect/android/utils/GenieClipboard;

    move-result-object v2

    const-string v3, "CACHED_CLIPBOARD_BUNDLE"

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/utils/GenieClipboard;->getObject(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 502
    .local v0, "b":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 503
    const-string v2, "profile_json"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileJSON:Ljava/lang/String;

    .line 504
    const-string v2, "is_manual_edit"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mIsManualEdit:Z

    .line 506
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileJSON:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    .line 507
    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mVisitorId:J

    .line 508
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->updateUI()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->profile_save:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_action_light_cancel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->alert_dialog_cancel:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 518
    return-void

    .line 499
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "b":Landroid/os/Bundle;
    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCbEnableNetworking:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->profile_disable_networking:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->profile_disable_networking_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_cancel:I

    new-instance v2, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$3;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$3;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v2, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$2;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->doUpdate()V

    goto :goto_0
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->cancelCallback()V

    .line 549
    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 552
    iget-boolean v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mProfileUpdateEnabled:Z

    if-nez v2, :cond_0

    .line 568
    :goto_0
    return-void

    .line 554
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 555
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget v3, Lcom/eventgenie/android/R$string;->mugshot_using_camera:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/eventgenie/android/R$string;->mugshot_from_gallery:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 556
    .local v1, "items":[Ljava/lang/CharSequence;
    sget v2, Lcom/eventgenie/android/R$string;->mugshot_update_your_photo:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 557
    new-instance v2, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$4;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$4;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 703
    return-void
.end method
