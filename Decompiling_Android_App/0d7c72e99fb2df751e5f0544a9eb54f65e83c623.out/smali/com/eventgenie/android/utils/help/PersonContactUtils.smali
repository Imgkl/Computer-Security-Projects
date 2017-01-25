.class public Lcom/eventgenie/android/utils/help/PersonContactUtils;
.super Ljava/lang/Object;
.source "PersonContactUtils.java"


# static fields
.field public static final FIELD_TO_SHOW_ADDRESS:Ljava/lang/String; = "address"

.field public static final FIELD_TO_SHOW_CONTACT_BLOG:Ljava/lang/String; = "blogUrl"

.field public static final FIELD_TO_SHOW_CONTACT_EMAIL:Ljava/lang/String; = "email"

.field public static final FIELD_TO_SHOW_CONTACT_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final FIELD_TO_SHOW_CONTACT_FAX:Ljava/lang/String; = "fax"

.field public static final FIELD_TO_SHOW_CONTACT_LINKED_IN:Ljava/lang/String; = "linkedIn"

.field public static final FIELD_TO_SHOW_CONTACT_TELEPHONE:Ljava/lang/String; = "telephone"

.field public static final FIELD_TO_SHOW_CONTACT_TELEPHONE2:Ljava/lang/String; = "telephone2"

.field public static final FIELD_TO_SHOW_CONTACT_TWITTER:Ljava/lang/String; = "twitter"

.field public static final FIELD_TO_SHOW_CONTACT_WWW:Ljava/lang/String; = "www"

.field public static final FIELD_TO_SHOW_CONTACT_YOUTUBE:Ljava/lang/String; = "youtubeUrl"

.field public static final FIELD_TO_SHOW_FULL_DESCRIPTION:Ljava/lang/String; = "fullDescription"

.field public static final FIELD_TO_SHOW_INTERESTS:Ljava/lang/String; = "interests"

.field public static final FIELD_TO_SHOW_MUGSHOT:Ljava/lang/String; = "mugShotUrl"

.field public static final FIELD_TO_SHOW_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_TO_SHOW_ORGANISATION_COMPANY_NAME:Ljava/lang/String; = "companyName"

.field public static final FIELD_TO_SHOW_ORGANISATION_DEPARTMENT:Ljava/lang/String; = "department"

.field public static final FIELD_TO_SHOW_ORGANISATION_JOB_TITLE:Ljava/lang/String; = "jobTitle"

.field public static final FIELD_TO_SHOW_REASON_FOR_ATTENDING:Ljava/lang/String; = "reasonForAttending"

.field public static final FIELD_TO_SHOW_VISITOR_TYPE:Ljava/lang/String; = "visitorType"

.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAddressString(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "a"    # Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;

    .prologue
    const/4 v4, 0x2

    .line 120
    const-string v0, ""

    .line 121
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_address1()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_address2()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_1
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_address3()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_town()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_3
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_county()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_4
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_postCode()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_5
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_country()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_7

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_7

    .line 147
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 148
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildAddressString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x2

    .line 189
    const-string v0, ""

    .line 190
    .local v0, "addr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 192
    .local v2, "value":Ljava/lang/String;
    if-eqz p0, :cond_8

    .line 193
    const-string v3, "address1"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    const-string v3, "address2"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_1
    const-string v3, "address3"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_2
    const-string/jumbo v3, "town"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_3
    const-string v3, "county"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_4
    const-string v3, "postCode"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_5
    const-string v3, "country"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 214
    .local v1, "country":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 215
    if-eqz v1, :cond_6

    .line 216
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    :cond_6
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_8

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_8

    .line 223
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 224
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    .end local v1    # "country":Lorg/json/JSONObject;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static buildAddressString(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v4, 0x2

    .line 82
    const-string v0, ""

    .line 83
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 85
    .local v1, "value":Ljava/lang/String;
    const-string v2, "address_address1"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    const-string v2, "address_address2"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    const-string v2, "address_address3"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_2
    const-string v2, "address_town"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_3
    const-string v2, "address_county"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_4
    const-string v2, "address_postCode"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_5
    const-string v2, "address_country"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_7

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_7

    .line 109
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildAddressStringForDecoding(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;

    .prologue
    const/4 v4, 0x2

    .line 158
    const-string v0, ""

    .line 159
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 162
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_address1()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_town()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_1
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_postCode()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_2
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_country()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 178
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasAddressDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Z
    .locals 1
    .param p0, "entity"    # Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;

    .prologue
    .line 291
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_address1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_address2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_address3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_town()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_county()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_postCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;->getAddress_country()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasContactDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;)Z
    .locals 1
    .param p0, "entity"    # Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;

    .prologue
    .line 278
    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_linkedIn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_twitter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_youtubeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_fax()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_facebook()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_blogUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_telephone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_telephone2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_www()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_email()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "visitorObject"    # Lorg/json/JSONObject;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .prologue
    .line 233
    invoke-virtual {p2, p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isFieldVisible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static populateContactDetails(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;ZLjava/lang/Integer;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
    .param p3, "holo"    # Z
    .param p4, "titleColour"    # Ljava/lang/Integer;

    .prologue
    const/16 v3, 0x8

    .line 301
    if-eqz p3, :cond_1

    .line 302
    sget v1, Lcom/eventgenie/android/R$id;->contact_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->exhibitor_contact:I

    invoke-static {v1, v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 307
    :goto_0
    sget v1, Lcom/eventgenie/android/R$id;->contactDetailsBlock:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 309
    .local v0, "table":Landroid/widget/TableLayout;
    sget v1, Lcom/eventgenie/android/R$id;->linkedin:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_linkedIn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 311
    sget v1, Lcom/eventgenie/android/R$id;->twitter:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_twitter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 313
    sget v1, Lcom/eventgenie/android/R$id;->youtube:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_youtubeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 315
    sget v1, Lcom/eventgenie/android/R$id;->fax:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_fax()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 317
    sget v1, Lcom/eventgenie/android/R$id;->facebook:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_facebook()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 319
    sget v1, Lcom/eventgenie/android/R$id;->blog:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_blogUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 321
    sget v1, Lcom/eventgenie/android/R$id;->phone:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_telephone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 323
    sget v1, Lcom/eventgenie/android/R$id;->phone2:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_telephone2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 325
    sget v1, Lcom/eventgenie/android/R$id;->web:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_www()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 327
    sget v1, Lcom/eventgenie/android/R$id;->email:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;->getContact_email()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 330
    instance-of v1, p2, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;

    if-eqz v1, :cond_0

    .line 331
    sget v1, Lcom/eventgenie/android/R$id;->address:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast p2, Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;

    .end local p2    # "entity":Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
    invoke-static {p2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->buildAddressString(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-static {v0, p4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->toggleRowVisibility(Landroid/widget/TableLayout;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const/4 v1, 0x1

    .line 340
    :goto_1
    return v1

    .line 304
    .end local v0    # "table":Landroid/widget/TableLayout;
    .restart local p2    # "entity":Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
    :cond_1
    sget v1, Lcom/eventgenie/android/R$id;->contact_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->exhibitor_contact:I

    invoke-static {v1, v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 338
    .end local p2    # "entity":Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
    .restart local v0    # "table":Landroid/widget/TableLayout;
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 339
    sget v1, Lcom/eventgenie/android/R$id;->contact_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static populateContactDetails(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/lang/Integer;Ljava/util/List;)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactDetailsBlock"    # Landroid/view/View;
    .param p2, "visitorObject"    # Lorg/json/JSONObject;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    .param p4, "titleColour"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Lorg/json/JSONObject;",
            "Lcom/genie_connect/android/db/config/features/NetworkingFeatures;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p5, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    move-object v8, p1

    check-cast v8, Landroid/widget/TableLayout;

    .line 348
    .local v8, "table":Landroid/widget/TableLayout;
    const-string v0, "contact"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 349
    .local v3, "contact":Lorg/json/JSONObject;
    const-string v0, "address"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 351
    .local v7, "address":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 352
    sget v0, Lcom/eventgenie/android/R$id;->linkedin:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "linkedIn"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->LinkedIn:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 353
    sget v0, Lcom/eventgenie/android/R$id;->twitter:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "twitter"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Twitter:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 354
    sget v0, Lcom/eventgenie/android/R$id;->youtube:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "youtubeUrl"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->YouTubeUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 355
    sget v0, Lcom/eventgenie/android/R$id;->fax:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "fax"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Fax:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 356
    sget v0, Lcom/eventgenie/android/R$id;->facebook:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "facebook"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Facebook:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 357
    sget v0, Lcom/eventgenie/android/R$id;->blog:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "blogUrl"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->BlogUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 358
    sget v0, Lcom/eventgenie/android/R$id;->phone:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "telephone"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Telephone:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 359
    sget v0, Lcom/eventgenie/android/R$id;->phone2:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "telephone2"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Telephone2:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 360
    sget v0, Lcom/eventgenie/android/R$id;->web:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "www"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->WWW:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 361
    sget v0, Lcom/eventgenie/android/R$id;->email:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "email"

    sget-object v6, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Email:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V

    .line 366
    :goto_0
    if-eqz v7, :cond_3

    .line 367
    sget-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Address:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    sget v0, Lcom/eventgenie/android/R$id;->address:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_0
    :goto_1
    invoke-static {v8, p4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->toggleRowVisibility(Landroid/widget/TableLayout;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const/4 v0, 0x1

    .line 384
    :goto_2
    return v0

    .line 363
    :cond_1
    const-string v0, "^ populateContactDetails() Contact JSON is null."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_2
    const-string v0, "address"

    invoke-static {v0, p2, p3}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    sget v0, Lcom/eventgenie/android/R$id;->address:I

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v7}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->buildAddressString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_3
    const-string v0, "^ populateContactDetails() Address JSON is null."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    const-string v0, "^ populateContactDetails() Hiding view as there are no visible contact details."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static populateContactDetails(Landroid/app/Activity;Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;ZLjava/lang/Integer;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "holo"    # Z
    .param p4, "titleColour"    # Ljava/lang/Integer;

    .prologue
    const/16 v3, 0x8

    .line 237
    if-eqz p3, :cond_0

    .line 238
    sget v1, Lcom/eventgenie/android/R$id;->contact_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->exhibitor_contact:I

    invoke-static {v1, v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 243
    :goto_0
    sget v1, Lcom/eventgenie/android/R$id;->contactDetailsBlock:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 245
    .local v0, "table":Landroid/widget/TableLayout;
    sget v1, Lcom/eventgenie/android/R$id;->linkedin:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_linkedIn"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 247
    sget v1, Lcom/eventgenie/android/R$id;->twitter:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_twitter"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 249
    sget v1, Lcom/eventgenie/android/R$id;->youtube:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_youtubeUrl"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 251
    sget v1, Lcom/eventgenie/android/R$id;->fax:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_fax"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 253
    sget v1, Lcom/eventgenie/android/R$id;->facebook:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_facebook"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 255
    sget v1, Lcom/eventgenie/android/R$id;->blog:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_blogUrl"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 257
    sget v1, Lcom/eventgenie/android/R$id;->phone:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_telephone"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 259
    sget v1, Lcom/eventgenie/android/R$id;->phone2:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_telephone2"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 261
    sget v1, Lcom/eventgenie/android/R$id;->web:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_www"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 263
    sget v1, Lcom/eventgenie/android/R$id;->email:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "contact_email"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 265
    sget v1, Lcom/eventgenie/android/R$id;->address:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->buildAddressString(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 268
    invoke-static {v0, p4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->toggleRowVisibility(Landroid/widget/TableLayout;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x1

    .line 273
    :goto_1
    return v1

    .line 240
    .end local v0    # "table":Landroid/widget/TableLayout;
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->contact_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->exhibitor_contact:I

    invoke-static {v1, v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 271
    .restart local v0    # "table":Landroid/widget/TableLayout;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 272
    sget v1, Lcom/eventgenie/android/R$id;->contact_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setTextWithVisibilityCheck(Landroid/widget/TextView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/util/List;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "access"    # Lorg/json/JSONObject;
    .param p3, "container"    # Lorg/json/JSONObject;
    .param p4, "config"    # Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    .param p6, "restrictionType"    # Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lcom/genie_connect/android/db/config/features/NetworkingFeatures;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 435
    .local p5, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "text":Ljava/lang/String;
    invoke-interface {p5, p6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    const/4 v1, 0x0

    .line 445
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 446
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    return-void

    .line 441
    .end local v1    # "visible":Z
    :cond_0
    invoke-static {p1, p2, p4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v1

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 449
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 452
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static toggleRowVisibility(Landroid/widget/TableLayout;Ljava/lang/Integer;)Z
    .locals 9
    .param p0, "table"    # Landroid/widget/TableLayout;
    .param p1, "titleColour"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 390
    const/4 v4, 0x0

    .line 395
    .local v4, "visibleRows":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 396
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 397
    .local v2, "row":Landroid/widget/TableRow;
    invoke-virtual {v2, v6}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 398
    .local v3, "title":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    .local v0, "data":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 401
    add-int/lit8 v4, v4, 0x1

    .line 403
    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 404
    if-eqz p1, :cond_1

    .line 405
    check-cast v3, Landroid/widget/ImageView;

    .end local v3    # "title":Landroid/view/View;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 395
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .restart local v3    # "title":Landroid/view/View;
    :cond_1
    check-cast v3, Landroid/widget/ImageView;

    .end local v3    # "title":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 412
    .restart local v3    # "title":Landroid/view/View;
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_1

    .line 416
    .end local v0    # "data":Landroid/widget/TextView;
    .end local v2    # "row":Landroid/widget/TableRow;
    .end local v3    # "title":Landroid/view/View;
    :cond_3
    if-lez v4, :cond_4

    :goto_2
    return v5

    :cond_4
    move v5, v6

    goto :goto_2
.end method
