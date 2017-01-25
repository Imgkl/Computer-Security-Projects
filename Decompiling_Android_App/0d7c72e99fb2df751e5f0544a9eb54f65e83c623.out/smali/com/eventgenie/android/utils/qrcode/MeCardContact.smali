.class public Lcom/eventgenie/android/utils/qrcode/MeCardContact;
.super Ljava/lang/Object;
.source "MeCardContact.java"

# interfaces
.implements Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;


# instance fields
.field properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->properties:Ljava/util/HashMap;

    .line 43
    return-void
.end method


# virtual methods
.method public getAddressHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "ADR2"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressWork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "ADR1"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "ORG"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "EMAIL"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "N"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "contactDetails":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "company"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getCompany()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "job_title"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getJobTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "email"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "email_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "phone"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getPhoneWork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v1, "secondary_phone"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getPhoneHome()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "secondary_phone_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v1, "notes"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "postal"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getAddressWork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "postal_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "TITLE"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "URL"

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "NOTE"

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "TEL2"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneWork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "TEL1"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "PHOTO"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
