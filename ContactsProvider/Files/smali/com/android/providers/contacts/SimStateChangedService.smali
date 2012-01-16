.class public Lcom/android/providers/contacts/SimStateChangedService;
.super Landroid/app/Service;
.source "SimStateChangedService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/SimStateChangedService;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/SimStateChangedService;->j(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private j(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 265
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return p2

    .line 269
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 p2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/SimStateChangedService;->stopSelf(I)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    const-string v1, "com.android.contacts.sim_loaded"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.contacts.sim_absent"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/SimStateChangedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, p3, v2}, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;-><init>(Lcom/android/providers/contacts/SimStateChangedService;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->start()V

    .line 61
    const/4 v0, 0x1

    .line 64
    :cond_2
    if-nez v0, :cond_3

    .line 65
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/SimStateChangedService;->stopSelf(I)V

    .line 68
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
