.class public Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "EmailMyEventActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;

.field private mCheckedItems:[Z

.field private mEmail:Landroid/widget/AutoCompleteTextView;

.field private mFindPeopleAvailable:Z

.field private mHideAdvert:Z

.field private mIsLogged:Z

.field private mIsRestrictedEmailEntry:Z

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private mMyEventConfig:Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mTvEmailMeMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mHideAdvert:Z

    .line 94
    new-instance v0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$1;-><init>(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 336
    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsRestrictedEmailEntry:Z

    return v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsLogged:Z

    return v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mModules:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Lcom/genie_connect/android/db/config/widgets/MyEventConfig;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mMyEventConfig:Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    return-object v0
.end method

.method private removeUneededItems(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    const/4 v11, 0x0

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v4, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    .line 291
    .local v2, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    .line 293
    .local v8, "namespace":J
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v5

    .line 296
    .local v5, "loggedIn":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 297
    .local v6, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    const/4 v1, 0x0

    .line 299
    .local v1, "count":I
    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v10

    if-ne v7, v10, :cond_2

    .line 300
    if-eqz v5, :cond_1

    .line 301
    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v7

    sget-object v10, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7, v10, v8, v9}, Lcom/genie_connect/android/db/access/Udm;->getNumberOfFav(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I

    move-result v1

    .line 317
    :cond_1
    :goto_1
    if-lez v1, :cond_0

    .line 318
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_2
    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v10

    if-ne v7, v10, :cond_3

    .line 305
    if-eqz v5, :cond_1

    .line 306
    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v7

    sget-object v10, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7, v10, v8, v9}, Lcom/genie_connect/android/db/access/Udm;->getNumberOfFav(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I

    move-result v1

    goto :goto_1

    .line 309
    :cond_3
    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v10

    if-ne v7, v10, :cond_4

    .line 310
    const-class v7, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {v7, v11, v11, v11}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 311
    .local v0, "c":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    .line 312
    goto :goto_1

    .line 313
    .end local v0    # "c":Luk/co/alt236/easycursor/EasyCursor;
    :cond_4
    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 314
    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v7

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v10

    invoke-virtual {v7, v10, v8, v9}, Lcom/genie_connect/android/db/access/Udm;->getNumberOfFav(Lcom/genie_connect/android/db/config/GenieWidget;J)I

    move-result v1

    goto :goto_1

    .line 322
    .end local v1    # "count":I
    .end local v6    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :cond_5
    return-object v4
.end method

.method private setupInvalidEmailEmptyViewForLeadGenie()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->isWidgetPresent(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mFindPeopleAvailable:Z

    .line 105
    sget v1, Lcom/eventgenie/android/R$id;->myEventLeadGenieEmpty:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "emptyView":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/eventgenie/android/R$string;->label_leadgenie_you_do_not_have_a_valid_email_address:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mFindPeopleAvailable:Z

    if-eqz v1, :cond_0

    .line 114
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Open"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getUserEmails(Z)Ljava/util/List;
    .locals 12
    .param p1, "isLeadGenieEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 123
    .local v6, "emails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v9

    .line 129
    .local v9, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v9, :cond_0

    .line 130
    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getContact()Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "email":Ljava/lang/String;
    if-eqz v4, :cond_0

    sget-object v10, Lcom/eventgenie/android/utils/constants/RegularExpressions;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 132
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v4    # "email":Ljava/lang/String;
    .end local v9    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_0
    if-eqz p1, :cond_2

    .line 160
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    .restart local v4    # "email":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v4    # "email":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    .local v1, "accounts":[Landroid/accounts/Account;
    :goto_1
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_1

    aget-object v0, v2, v7

    .line 154
    .local v0, "account":Landroid/accounts/Account;
    sget-object v10, Lcom/eventgenie/android/utils/constants/RegularExpressions;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 155
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 148
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    new-array v1, v10, [Landroid/accounts/Account;

    .restart local v1    # "accounts":[Landroid/accounts/Account;
    goto :goto_1

    .line 164
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "e":Ljava/lang/Exception;
    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    return-object v5
.end method

.method public isAnyItemSelected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 172
    .local v0, "checked":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_0

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 174
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const/4 v2, 0x1

    .line 180
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 173
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    sget v3, Lcom/eventgenie/android/R$layout;->activity_myevent_list:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->setContentView(I)V

    .line 188
    sget v3, Lcom/eventgenie/android/R$id;->autoCompleteEmail:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    .line 189
    sget v3, Lcom/eventgenie/android/R$id;->emailme_message:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mTvEmailMeMessage:Landroid/widget/TextView;

    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mMyEventConfig:Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    .line 192
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mTvEmailMeMessage:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mMyEventConfig:Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getEmailMeMyEventDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mMyEventConfig:Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getEmailMyEventWidgets()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->removeUneededItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mModules:Ljava/util/List;

    .line 199
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mCheckedItems:[Z

    .line 200
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getEmailMyEventMode()Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    move-result-object v3

    sget-object v6, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->LOGGED_IN_CANNOT_EDIT_EMAIL:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    if-ne v3, v6, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsRestrictedEmailEntry:Z

    .line 203
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsRestrictedEmailEntry:Z

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getUserEmails(Z)Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "userEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsRestrictedEmailEntry:Z

    if-eqz v3, :cond_5

    .line 207
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v5}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 208
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_4

    .line 209
    :cond_0
    const/4 v1, 0x1

    .line 232
    .local v1, "invalidLeadGenieEmail":Z
    :goto_1
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsRestrictedEmailEntry:Z

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mModules:Ljava/util/List;

    .line 234
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mTvEmailMeMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v8}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 236
    invoke-direct {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->setupInvalidEmailEmptyViewForLeadGenie()V

    .line 238
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$id;->myEventLeadGenieEmpty:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 246
    :goto_2
    new-instance v3, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;

    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mModules:Ljava/util/List;

    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mCheckedItems:[Z

    invoke-direct {v3, p0, v4, v6}, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;[Z)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mAdapter:Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;

    .line 247
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 248
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mAdapter:Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 251
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 253
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 254
    const-string v3, "hide_advert"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mHideAdvert:Z

    .line 257
    :cond_1
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mHideAdvert:Z

    if-nez v3, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->showAdvert()V

    .line 260
    :cond_2
    return-void

    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "invalidLeadGenieEmail":Z
    .end local v2    # "userEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v3, v5

    .line 200
    goto/16 :goto_0

    .line 211
    .restart local v2    # "userEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v1, 0x0

    .line 212
    .restart local v1    # "invalidLeadGenieEmail":Z
    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->toggleButton()V

    goto :goto_1

    .line 216
    .end local v1    # "invalidLeadGenieEmail":Z
    :cond_5
    const/4 v1, 0x0

    .line 218
    .restart local v1    # "invalidLeadGenieEmail":Z
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 219
    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_6
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget v6, Lcom/eventgenie/android/R$layout;->list_item_text:I

    sget v7, Lcom/eventgenie/android/R$id;->text:I

    invoke-direct {v4, p0, v6, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->toggleButton()V

    goto/16 :goto_1

    .line 240
    :cond_7
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$id;->myEventEmpty:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 242
    sget v3, Lcom/eventgenie/android/R$id;->myEventEmpty:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mMyEventConfig:Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getEmailMeMyEventNoFavouritesText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .line 264
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mCheckedItems:[Z

    aget-boolean v0, v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p3

    .line 265
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->toggleButton()V

    .line 266
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mAdapter:Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->notifyDataSetChanged()V

    .line 267
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOpenAppropriateWidgetClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mFindPeopleAvailable:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->openWidget(Landroid/app/Activity;Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 273
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->finish()V

    .line 275
    :cond_0
    return-void
.end method

.method public onSendEmailClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsLogged:Z

    .line 281
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/ReachabilityManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;-><init>(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public toggleButton()V
    .locals 3

    .prologue
    .line 329
    sget-object v0, Lcom/eventgenie/android/utils/constants/RegularExpressions;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->isAnyItemSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEND:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEND:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0
.end method
