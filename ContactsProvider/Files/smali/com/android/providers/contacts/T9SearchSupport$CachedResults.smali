.class Lcom/android/providers/contacts/T9SearchSupport$CachedResults;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# instance fields
.field public ii:Ljava/lang/String;

.field public ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 850
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 854
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    .line 859
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>()V

    return-void
.end method
