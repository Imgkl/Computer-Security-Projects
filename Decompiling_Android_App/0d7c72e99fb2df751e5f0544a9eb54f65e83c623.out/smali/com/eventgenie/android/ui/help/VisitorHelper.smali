.class public Lcom/eventgenie/android/ui/help/VisitorHelper;
.super Ljava/lang/Object;
.source "VisitorHelper.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "networkingFeatures"    # Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/ui/help/VisitorHelper;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/eventgenie/android/ui/help/VisitorHelper;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 61
    return-void
.end method

.method private static getVisitorGroup(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "visitorProfile"    # Lorg/json/JSONObject;

    .prologue
    .line 230
    :try_start_0
    const-string/jumbo v1, "visitorGroup"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public populateTable(Landroid/widget/TableLayout;Ljava/lang/String;Lorg/json/JSONObject;ZI)I
    .locals 11
    .param p1, "table"    # Landroid/widget/TableLayout;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "userProfile"    # Lorg/json/JSONObject;
    .param p4, "hideRowIfEmpty"    # Z
    .param p5, "headerColor"    # I

    .prologue
    .line 75
    const/4 v8, 0x0

    .line 84
    .local v8, "visibleRows":I
    invoke-static/range {p5 .. p5}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateOverridingColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 86
    .local v0, "cf":Landroid/graphics/ColorFilter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 87
    invoke-virtual {p1, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    .line 88
    .local v5, "row":Landroid/widget/TableRow;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "desc":Landroid/view/View;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    .local v1, "data":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 92
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    .local v6, "tag":Ljava/lang/String;
    iget-object v9, p0, Lcom/eventgenie/android/ui/help/VisitorHelper;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v6, p3, v9}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 94
    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 100
    .local v4, "obj":Lorg/json/JSONObject;
    :goto_1
    if-eqz v4, :cond_5

    .line 101
    const-string v9, "country"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 102
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "name"

    invoke-static {v9, v10}, Lcom/eventgenie/android/utils/help/NetworkingUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "value":Ljava/lang/String;
    :goto_2
    instance-of v9, v2, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 108
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "desc":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 111
    :cond_0
    if-eqz p4, :cond_4

    .line 112
    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 113
    add-int/lit8 v8, v8, 0x1

    .line 114
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .restart local v2    # "desc":Landroid/view/View;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_1
    move-object v4, p3

    .restart local v4    # "obj":Lorg/json/JSONObject;
    goto :goto_1

    .line 104
    :cond_2
    invoke-static {v4, v6}, Lcom/eventgenie/android/utils/help/NetworkingUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_2

    .line 116
    .end local v2    # "desc":Landroid/view/View;
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_3

    .line 119
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 120
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 124
    .end local v7    # "value":Ljava/lang/String;
    .restart local v2    # "desc":Landroid/view/View;
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_3

    .line 129
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_6
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_3

    .line 132
    .end local v6    # "tag":Ljava/lang/String;
    :cond_7
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_3

    .line 136
    .end local v1    # "data":Landroid/widget/TextView;
    .end local v2    # "desc":Landroid/view/View;
    .end local v5    # "row":Landroid/widget/TableRow;
    :cond_8
    if-lez v8, :cond_9

    .line 137
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 142
    :goto_4
    return v8

    .line 139
    :cond_9
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method public populateVisitorHeader(Landroid/view/View;Lorg/json/JSONObject;ZLjava/util/List;)V
    .locals 9
    .param p1, "header"    # Landroid/view/View;
    .param p2, "visitorProfile"    # Lorg/json/JSONObject;
    .param p3, "myProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    const/16 v8, 0x8

    .line 149
    sget v1, Lcom/eventgenie/android/R$id;->visitor_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p2}, Lcom/eventgenie/android/utils/help/NetworkingUtils;->getVisitorFullName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    if-nez p3, :cond_0

    .line 154
    sget v1, Lcom/eventgenie/android/R$id;->visitor_company:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 155
    .restart local v0    # "tv":Landroid/widget/TextView;
    const-string v1, "companyName"

    iget-object v4, p0, Lcom/eventgenie/android/ui/help/VisitorHelper;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->CompanyName:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 159
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->visitor_group:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 161
    .restart local v0    # "tv":Landroid/widget/TextView;
    sget-object v1, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->VisitorGroup:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string/jumbo v1, "visitorType"

    iget-object v2, p0, Lcom/eventgenie/android/ui/help/VisitorHelper;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v1, p2, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-static {p2}, Lcom/eventgenie/android/ui/help/VisitorHelper;->getVisitorGroup(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "groupName":Ljava/lang/String;
    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 174
    .end local v7    # "groupName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "headerView"    # Landroid/view/View;
    .param p3, "headerTextId"    # I
    .param p4, "contentView"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/VisitorHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p3, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/VisitorHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p2, v1, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 185
    if-eqz p4, :cond_0

    .line 186
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateJsonPayloadObject(Lorg/json/JSONObject;Landroid/widget/TableLayout;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "payloadObject"    # Lorg/json/JSONObject;
    .param p2, "table"    # Landroid/widget/TableLayout;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .local v3, "innerObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 197
    invoke-virtual {p2, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    .line 199
    .local v4, "row":Landroid/widget/TableRow;
    invoke-virtual {v4}, Landroid/widget/TableRow;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 200
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    .local v0, "dataView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 205
    .local v5, "tag":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "value":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 207
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .end local v0    # "dataView":Landroid/widget/TextView;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .restart local v0    # "dataView":Landroid/widget/TextView;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ updateJsonUpdateObject(): Error adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v0    # "dataView":Landroid/widget/TextView;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "row":Landroid/widget/TableRow;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    .line 220
    :try_start_1
    invoke-virtual {p1, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :cond_3
    :goto_2
    return-object p1

    .line 221
    :catch_1
    move-exception v1

    .line 222
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ updateJsonUpdateObject(): Error adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to parent object"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_2
.end method
