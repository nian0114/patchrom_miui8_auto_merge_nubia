.class public final Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;
.super Ljava/lang/Object;
.source "BearerSimSmsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$1;,
        Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BearerSimSmsData"

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v0

    .local v0, "septets":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->get7bitTed(I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    return-object v1

    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->get16bitTed(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_0
.end method

.method private static convertToBCD(I)I
    .locals 4
    .param p0, "number"    # I

    .prologue
    move v2, p0

    .local v2, "result":I
    div-int/lit8 v0, p0, 0xa

    .local v0, "a":I
    rem-int/lit8 v1, p0, 0xa

    .local v1, "b":I
    mul-int/lit8 v3, v0, 0x10

    add-int v2, v3, v1

    return v2
.end method

.method private static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force"    # Z

    .prologue
    const/4 v2, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "msgLen":I
    if-eqz p1, :cond_1

    .end local v1    # "msgLen":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "msgLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "payload":[B
    array-length v4, p1

    add-int/lit8 v2, v4, 0x1

    .local v2, "udhBytes":I
    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v3, v4, 0x2

    .local v3, "udhCodeUnits":I
    array-length v4, v0

    div-int/lit8 v1, v4, 0x2

    .local v1, "payloadCodeUnits":I
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    add-int v4, v3, v1

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v0

    invoke-static {v0, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .local v4, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "charCode":I
    invoke-static {v0, p1, v4, p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->writeCharCodeForAscii(IZLcom/android/internal/util/BitwiseOutputStream;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "charCode":I
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .end local v2    # "i":I
    .end local v3    # "msgLen":I
    .end local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 12
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    :try_start_0
    array-length v8, p1

    add-int/lit8 v6, v8, 0x1

    .local v6, "udhBytes":I
    mul-int/lit8 v8, v6, 0x8

    add-int/lit8 v8, v8, 0x6

    div-int/lit8 v7, v8, 0x7

    .local v7, "udhSeptets":I
    mul-int/lit8 v8, v7, 0x7

    mul-int/lit8 v9, v6, 0x8

    sub-int v4, v8, v9

    .local v4, "paddingBits":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "msgLen":I
    invoke-static {v2, v1, v4, p2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getStream(ILjava/lang/String;IZ)Lcom/android/internal/util/BitwiseOutputStream;

    move-result-object v3

    .local v3, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v5

    .local v5, "payload":[B
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    array-length v8, v5

    add-int/2addr v8, v6

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v9, 0x0

    array-length v10, p1

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x1

    array-length v11, p1

    invoke-static {p1, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v10, v5

    invoke-static {v5, v8, v9, v6, v10}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "msgLen":I
    .end local v3    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v4    # "paddingBits":I
    .end local v5    # "payload":[B
    .end local v6    # "udhBytes":I
    .end local v7    # "udhSeptets":I
    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "7bit ASCII encode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .local v1, "udhBytes":I
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    .local v2, "udhSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;

    move-result-object v0

    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .local v1, "fullData":[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$1;)V

    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .end local v1    # "fullData":[B
    .end local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    const/16 v3, 0x9

    .local v3, "paramBits":I
    const/4 v1, 0x0

    .local v1, "dataBits":I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x7

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x8

    :goto_0
    add-int/2addr v3, v1

    div-int/lit8 v8, v3, 0x8

    rem-int/lit8 v5, v3, 0x8

    if-lez v5, :cond_3

    move v5, v6

    :goto_1
    add-int v4, v8, v5

    .local v4, "paramBytes":I
    mul-int/lit8 v5, v4, 0x8

    sub-int v2, v5, v3

    .local v2, "paddingBits":I
    invoke-virtual {p1, v9, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x3

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v5, 0x4

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-lez v2, :cond_1

    invoke-virtual {p1, v2, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_1
    return-void

    .end local v2    # "paddingBits":I
    .end local v4    # "paramBytes":I
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    const-string v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "digits":I
    mul-int/lit8 v1, v3, 0x4

    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .local v2, "dataBytes":I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    new-array v5, v2, [B

    .local v5, "rawData":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/4 v6, 0x0

    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    add-int/lit8 v6, v0, -0x30

    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "c":C
    .end local v4    # "i":I
    .end local v5    # "rawData":[B
    .end local v6    # "val":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .restart local v0    # "c":C
    .restart local v4    # "i":I
    .restart local v5    # "rawData":[B
    .restart local v6    # "val":I
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .end local v0    # "c":C
    .end local v5    # "rawData":[B
    .end local v6    # "val":I
    :cond_5
    return-object v5
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    .local v1, "headerData":[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported EMS user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x4

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;J)V
    .locals 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x6

    .local v0, "timeStampLength":I
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p2, p3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getSimSmsTimeStamp(J)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;

    move-result-object v1

    .local v1, "ts":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->month:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->monthDay:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->hour:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->second:I

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method private static encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    .local v2, "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v0

    .local v0, "category":I
    shr-int/lit8 v4, v0, 0x8

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {p1, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v4

    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    goto :goto_0

    .end local v0    # "category":I
    .end local v2    # "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    :cond_0
    return-void
.end method

.method private static encodeShiftJis(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shift-JIS encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeSimSms(Lcom/android/internal/telephony/cdma/sms/BearerData;J)[B
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "sendTime"    # J

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .local v1, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->setSmsNormalParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->setSmsSetParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v1, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;J)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .end local v1    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v2, "BearerSimSmsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    const-string v2, "BearerSimSmsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8c

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v7, :cond_1

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v7

    .local v0, "dataBits":I
    add-int/lit8 v2, v0, 0xd

    .local v2, "paramBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x8

    :cond_3
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_7

    move v4, v5

    :goto_1
    add-int v3, v7, v4

    .local v3, "paramBytes":I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .local v1, "paddingBits":I
    invoke-virtual {p1, v8, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v4, 0x5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v4, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-lez v1, :cond_6

    invoke-virtual {p1, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_6
    return-void

    .end local v1    # "paddingBits":I
    .end local v3    # "paramBytes":I
    :cond_7
    move v4, v6

    goto :goto_1
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 1
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getOCTData(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getNotEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    goto :goto_0
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v1, "utf-16be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static get16bitTed(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z

    .prologue
    const/4 v3, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v0, v2, 0x2

    .local v0, "octets":I
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->getLongSmsTed(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .end local v0    # "octets":I
    :cond_0
    return-object v1

    .restart local v0    # "octets":I
    :cond_1
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method private static get7bitTed(I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .param p0, "septets"    # I

    .prologue
    const/4 v2, 0x1

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput p0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    rsub-int v1, p0, 0xa0

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    return-object v0
.end method

.method private static getBitsForNumFields(II)I
    .locals 3
    .param p0, "msgEncoding"    # I
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    mul-int/lit8 v0, p1, 0x8

    :goto_0
    return v0

    :pswitch_2
    mul-int/lit8 v0, p1, 0x7

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v0, p1, 0x10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 4
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;

    move-result-object v0

    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->data:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;->septets:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .end local v0    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$Gsm7bitCodingResult;
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v1, v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "languageValue"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "en"

    goto :goto_0

    :pswitch_1
    const-string v0, "fr"

    goto :goto_0

    :pswitch_2
    const-string v0, "es"

    goto :goto_0

    :pswitch_3
    const-string v0, "ja"

    goto :goto_0

    :pswitch_4
    const-string v0, "ko"

    goto :goto_0

    :pswitch_5
    const-string v0, "zh"

    goto :goto_0

    :pswitch_6
    const-string v0, "he"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getLongSmsTed(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p0, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .param p1, "octets"    # I

    .prologue
    const/16 v0, 0x86

    .local v0, "max_user_data_bytes_with_header":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4a4

    if-gt p1, v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    :cond_0
    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    return-object p0
.end method

.method private static getNotEncodingSetData(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 3
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0
.end method

.method private static getOCTData(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 2
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0
.end method

.method private static getSimSmsTimeStamp(J)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    .locals 10
    .param p0, "time"    # J

    .prologue
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .local v7, "year":I
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .local v3, "month":I
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .local v4, "monthDay":I
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .local v1, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .local v2, "minute":I
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .local v5, "second":I
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;-><init>()V

    .local v6, "ts":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    const/16 v8, 0x7d0

    if-lt v7, v8, :cond_0

    add-int/lit16 v8, v7, -0x7d0

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    :goto_0
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->month:I

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->monthDay:I

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->hour:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->second:I

    return-object v6

    :cond_0
    add-int/lit16 v8, v7, -0x76c

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->convertToBCD(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    goto :goto_0
.end method

.method private static getStream(ILjava/lang/String;IZ)Lcom/android/internal/util/BitwiseOutputStream;
    .locals 6
    .param p0, "msgLen"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "paddingBits"    # I
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    if-lez p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, p0

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .local v2, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {v2, p2, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p0, :cond_1

    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "charCode":I
    invoke-static {v0, p1, v1, p3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->writeCharCodeForEms(ILjava/lang/String;IZLcom/android/internal/util/BitwiseOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "charCode":I
    .end local v1    # "i":I
    .end local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_0
    move v3, v4

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_1
    return-object v2
.end method

.method private static isCmasAlertCategory(I)Z
    .locals 1
    .param p0, "category"    # I

    .prologue
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static serviceCategoryToCmasMessageClass(I)I
    .locals 1
    .param p0, "serviceCategory"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static setSmsNormalParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_5
    return-void
.end method

.method private static setSmsSetParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_6
    return-void
.end method

.method private static writeCharCodeForAscii(IZLcom/android/internal/util/BitwiseOutputStream;Ljava/lang/String;I)V
    .locals 3
    .param p0, "charCode"    # I
    .param p1, "force"    # Z
    .param p2, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot ASCII encode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2, v1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_0
.end method

.method private static writeCharCodeForEms(ILjava/lang/String;IZLcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .param p0, "charCode"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "force"    # Z
    .param p4, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-eqz p3, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p4, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot ASCII encode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p4, v1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_0
.end method
