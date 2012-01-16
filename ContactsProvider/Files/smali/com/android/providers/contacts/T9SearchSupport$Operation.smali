.class abstract Lcom/android/providers/contacts/T9SearchSupport$Operation;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;

.field public hy:I


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$Operation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2431
    iput p2, p0, Lcom/android/providers/contacts/T9SearchSupport$Operation;->hy:I

    .line 2432
    return-void
.end method


# virtual methods
.method abstract a(JLjava/lang/Object;)V
.end method

.method abstract apply()V
.end method
