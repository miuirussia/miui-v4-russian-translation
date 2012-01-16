.class Lcom/android/providers/contacts/CountryMonitor$1;
.super Ljava/lang/Object;
.source "CountryMonitor.java"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field final synthetic jL:Lcom/android/providers/contacts/CountryMonitor;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/CountryMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor$1;->jL:Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor$1;->jL:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/CountryMonitor;->a(Lcom/android/providers/contacts/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    return-void
.end method
