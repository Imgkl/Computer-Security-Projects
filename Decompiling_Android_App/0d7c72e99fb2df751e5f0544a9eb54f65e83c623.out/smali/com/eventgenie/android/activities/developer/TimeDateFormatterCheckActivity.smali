.class public Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;
.super Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;
.source "TimeDateFormatterCheckActivity.java"


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;


# instance fields
.field private mActionProvider:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;-><init>()V

    return-void
.end method

.method private static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .param p0, "localeString"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/Locale;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populate()V
    .locals 15

    .prologue
    .line 69
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 70
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v12

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getAvailableLocaleLabels(Lcom/genie_connect/android/db/config/AppConfig;)[Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, "localeLabels":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v12

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getAvailableLocaleValues(Lcom/genie_connect/android/db/config/AppConfig;)[Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "localeCodes":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "formatList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v12, Landroid/util/Pair;

    const-string v13, "Full"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v12, Landroid/util/Pair;

    const-string v13, "Long"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v12, Landroid/util/Pair;

    const-string v13, "Medium"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v12, Landroid/util/Pair;

    const-string v13, "Short"

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v12, v8

    if-ge v3, v12, :cond_4

    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendSectionLine()V

    .line 82
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v9, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendBold(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendSectionLine()V

    .line 85
    aget-object v12, v8, v3

    invoke-static {v12}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    .line 87
    .local v7, "locale":Ljava/util/Locale;
    const-string v12, "Combined Dates with Times:"

    invoke-virtual {p0, v12}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendBold(Ljava/lang/String;)V

    .line 88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 89
    .local v1, "dateFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 90
    .local v11, "timeFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Date with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Time"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "label":Ljava/lang/String;
    iget-object v12, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v13, v12, v7}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v6, v12}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v1    # "dateFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "label":Ljava/lang/String;
    .end local v11    # "timeFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendNewLine()V

    .line 96
    const-string v12, "Dates:"

    invoke-virtual {p0, v12}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendBold(Ljava/lang/String;)V

    .line 97
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 98
    .local v10, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13, v7}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 101
    .end local v10    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendNewLine()V

    .line 102
    const-string v12, "Times:"

    invoke-virtual {p0, v12}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendBold(Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 104
    .restart local v10    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13, v7}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 107
    .end local v10    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->appendNewLine()V

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 110
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "locale":Ljava/util/Locale;
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->writeToTextView()V

    .line 111
    return-void
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected getMinimumLabelCharCount()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0xa

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, "Time Format Check"

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->populate()V

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$menu;->menu_share:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    sget v1, Lcom/eventgenie/android/R$id;->menu_share:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 46
    .local v0, "shareItem":Landroid/view/MenuItem;
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->mActionProvider:Landroid/support/v7/widget/ShareActionProvider;

    .line 47
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->mActionProvider:Landroid/support/v7/widget/ShareActionProvider;

    new-instance v2, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v2, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    const-string v3, "Android internal Date/Time formats"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Lcom/eventgenie/android/utils/intents/ShareManager;->getShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 52
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method
