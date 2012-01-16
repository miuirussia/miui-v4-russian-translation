.class Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/android/providers/contacts/CallLogInsertionHelper;


# static fields
.field private static hD:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;


# instance fields
.field private final hE:Lcom/android/providers/contacts/CountryMonitor;

.field private final hF:Ljava/util/Locale;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->hE:Lcom/android/providers/contacts/CountryMonitor;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->hF:Ljava/util/Locale;

    .line 57
    iput-object p1, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    .locals 2
    .parameter

    .prologue
    .line 48
    const-class v1, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->hD:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->hD:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->hD:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->hE:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public h(Landroid/content/ContentValues;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->cB()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "countryiso"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "geocoded_location"

    iget-object v1, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mContext:Landroid/content/Context;

    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
