.class public Lcom/android/common/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# instance fields
.field private mReason:Ljava/lang/String;

.field private nE:Ljava/util/HashMap;

.field private nF:Lcom/android/common/NetworkConnectivityListener$State;

.field private nG:Z

.field private nH:Z

.field private nI:Landroid/net/NetworkInfo;

.field private nJ:Landroid/net/NetworkInfo;

.field private nK:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->nE:Ljava/util/HashMap;

    .line 128
    sget-object v0, Lcom/android/common/NetworkConnectivityListener$State;->lZ:Lcom/android/common/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->nF:Lcom/android/common/NetworkConnectivityListener$State;

    .line 129
    new-instance v0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->nK:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->nI:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->nF:Lcom/android/common/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->nG:Z

    return v0
.end method

.method static synthetic a(Lcom/android/common/NetworkConnectivityListener;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/common/NetworkConnectivityListener;->nH:Z

    return p1
.end method

.method static synthetic b(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->nJ:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic b(Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener$State;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->nF:Lcom/android/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic c(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->nE:Ljava/util/HashMap;

    return-object v0
.end method
