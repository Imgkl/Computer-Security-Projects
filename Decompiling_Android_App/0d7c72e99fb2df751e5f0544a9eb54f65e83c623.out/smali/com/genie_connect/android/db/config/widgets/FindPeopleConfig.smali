.class public final Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "FindPeopleConfig.java"


# instance fields
.field private final mEnableMyProfile:Z

.field private final mEnableMyProfileEditting:Z

.field private final mEnableRecommendations:Z

.field private final mFindPeopleDesc:Ljava/lang/String;

.field private final mMyProfileDescPlaceholder:Ljava/lang/String;

.field private final mSearchByCompany:Z

.field private final mSearchByInterest:Z

.field private final mSearchByKeyword:Z

.field private final mSearchByLastName:Z

.field private final mSearchByVisitorGroup:Z

.field private final mShowEmail:I


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 56
    const-string v0, "showEmail"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mShowEmail:I

    .line 58
    const-string v0, "myProfileDescPlaceholder"

    invoke-static {p1, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mMyProfileDescPlaceholder:Ljava/lang/String;

    .line 59
    const-string v0, "findPeopleDesc"

    invoke-static {p1, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mFindPeopleDesc:Ljava/lang/String;

    .line 61
    const-string v0, "enableRecommendations"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mEnableRecommendations:Z

    .line 62
    const-string v0, "enableMyProfileEditting"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mEnableMyProfileEditting:Z

    .line 63
    const-string v0, "enableMyProfile"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mEnableMyProfile:Z

    .line 64
    const-string v0, "searchByKeyword"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByKeyword:Z

    .line 65
    const-string v0, "searchByCompany"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByCompany:Z

    .line 66
    const-string v0, "searchByLastName"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByLastName:Z

    .line 67
    const-string v0, "searchByInterest"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByInterest:Z

    .line 68
    const-string v0, "searchByVisitorGroup"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByVisitorGroup:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getFindPeopleDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mFindPeopleDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMyProfileDescPlaceholder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mMyProfileDescPlaceholder:Ljava/lang/String;

    return-object v0
.end method

.method public getShowEmail()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mShowEmail:I

    return v0
.end method

.method public isEnableMyProfile()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mEnableMyProfile:Z

    return v0
.end method

.method public isEnableMyProfileEditting()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mEnableMyProfileEditting:Z

    return v0
.end method

.method public isEnableRecommendations()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mEnableRecommendations:Z

    return v0
.end method

.method public isSearchByCompany()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByCompany:Z

    return v0
.end method

.method public isSearchByInterest()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByInterest:Z

    return v0
.end method

.method public isSearchByKeyword()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByKeyword:Z

    return v0
.end method

.method public isSearchByLastName()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByLastName:Z

    return v0
.end method

.method public isSearchByVisitorGroup()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->mSearchByVisitorGroup:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
