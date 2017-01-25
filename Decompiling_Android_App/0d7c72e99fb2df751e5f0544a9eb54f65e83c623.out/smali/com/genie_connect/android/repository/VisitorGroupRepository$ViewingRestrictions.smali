.class public final enum Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
.super Ljava/lang/Enum;
.source "VisitorGroupRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/repository/VisitorGroupRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewingRestrictions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Address:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum BlogUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum CompanyName:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Department:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Email:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Facebook:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Fax:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum FullDescription:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Interests:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum JobTitle:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum LinkedIn:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum ReasonForAttending:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Telephone:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Telephone2:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum Twitter:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum VisitorGroup:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum WWW:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

.field public static final enum YouTubeUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "CompanyName"

    const-string v2, "companyName"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->CompanyName:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 87
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Department"

    const-string v2, "department"

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Department:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 88
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "JobTitle"

    const-string v2, "jobTitle"

    invoke-direct {v0, v1, v6, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->JobTitle:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 89
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "MugShot"

    const-string v2, "mugShot"

    invoke-direct {v0, v1, v7, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 90
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "VisitorGroup"

    const-string/jumbo v2, "visitorGroup"

    invoke-direct {v0, v1, v8, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->VisitorGroup:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 91
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Address"

    const/4 v2, 0x5

    const-string v3, "address"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Address:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 92
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Telephone"

    const/4 v2, 0x6

    const-string v3, "contact.telephone"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Telephone:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 93
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Telephone2"

    const/4 v2, 0x7

    const-string v3, "contact.telephone2"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Telephone2:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 94
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Fax"

    const/16 v2, 0x8

    const-string v3, "contact.fax"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Fax:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 95
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Email"

    const/16 v2, 0x9

    const-string v3, "contact.email"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Email:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 96
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "WWW"

    const/16 v2, 0xa

    const-string v3, "contact.www"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->WWW:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 97
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "BlogUrl"

    const/16 v2, 0xb

    const-string v3, "contact.blogUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->BlogUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 98
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "YouTubeUrl"

    const/16 v2, 0xc

    const-string v3, "contact.youtubeUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->YouTubeUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 99
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "LinkedIn"

    const/16 v2, 0xd

    const-string v3, "contact.linkedIn"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->LinkedIn:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 100
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Facebook"

    const/16 v2, 0xe

    const-string v3, "contact.facebook"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Facebook:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 101
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Twitter"

    const/16 v2, 0xf

    const-string v3, "contact.twitter"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Twitter:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 102
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "FullDescription"

    const/16 v2, 0x10

    const-string v3, "fullDescription"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->FullDescription:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 103
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "ReasonForAttending"

    const/16 v2, 0x11

    const-string v3, "reasonForAttending"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->ReasonForAttending:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 104
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    const-string v1, "Interests"

    const/16 v2, 0x12

    const-string v3, "interests"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Interests:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    .line 85
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    sget-object v1, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->CompanyName:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Department:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->JobTitle:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->VisitorGroup:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Address:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Telephone:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Telephone2:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Fax:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Email:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->WWW:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->BlogUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->YouTubeUrl:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->LinkedIn:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Facebook:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Twitter:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->FullDescription:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->ReasonForAttending:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Interests:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->$VALUES:[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->mText:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p0, :cond_1

    .line 115
    invoke-static {}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->values()[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 116
    .local v1, "b":Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    .end local v0    # "arr$":[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .end local v1    # "b":Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 115
    .restart local v0    # "arr$":[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .restart local v1    # "b":Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "arr$":[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .end local v1    # "b":Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->$VALUES:[Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-virtual {v0}, [Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    return-object v0
.end method
