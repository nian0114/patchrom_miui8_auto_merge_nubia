.class final Lcom/android/phone/NBPhoneExtra$MainThreadRequest;
.super Ljava/lang/Object;
.source "NBPhoneExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBPhoneExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;

.field public slotId:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->slotId:I

    iput-object p2, p0, Lcom/android/phone/NBPhoneExtra$MainThreadRequest;->argument:Ljava/lang/Object;

    return-void
.end method
