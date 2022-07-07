.class public La/d/a/i/b;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field public a:La/d/a/i/d;

.field public b:La/d/a/i/d;

.field public c:La/d/a/i/d;

.field public d:La/d/a/i/d;

.field public e:La/d/a/i/d;

.field public f:La/d/a/i/d;

.field public g:La/d/a/i/d;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/d/a/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(La/d/a/i/d;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/d/a/i/b;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La/d/a/i/b;->m:Z

    .line 4
    iput-object p1, p0, La/d/a/i/b;->a:La/d/a/i/d;

    .line 5
    iput p2, p0, La/d/a/i/b;->l:I

    .line 6
    iput-boolean p3, p0, La/d/a/i/b;->m:Z

    return-void
.end method
