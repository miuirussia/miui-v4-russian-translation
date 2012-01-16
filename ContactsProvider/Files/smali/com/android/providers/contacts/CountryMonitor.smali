.class public Lcom/android/providers/contacts/CountryMonitor;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# instance fields
.field private bl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor;->bl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor;->bl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor;->mContext:Landroid/content/Context;

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 48
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CountryMonitor;->bl:Ljava/lang/String;

    .line 49
    new-instance v1, Lcom/android/providers/contacts/CountryMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/CountryMonitor$1;-><init>(Lcom/android/providers/contacts/CountryMonitor;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor;->bl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
