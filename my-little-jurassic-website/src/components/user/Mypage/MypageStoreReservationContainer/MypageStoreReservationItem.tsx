import React, { useMemo } from "react";
import moment from "moment";
import styled from "styled-components";
import { useAppSelector } from "../../../../store";
import { selectUser } from "../../../../store/userSlice";
import MypageStoreReservationCancelBtn from "./MypageStoreReservationCancelBtn";
import { IStoreReservation, TPlayStatus } from "./MypageStoreReservationList";
import MypageStoreReservationStatus from "./MypageStoreReservationStatus";

interface IProps {
  item: IStoreReservation;
}

const MypageStoreReservationItem = ({ item }: IProps): JSX.Element => {
  console.log(item);
  const { id, playDateTime, title, img, storeName, status, tel, totalVisitor } = item;
  const user = useAppSelector(selectUser);

  const canCancel = useMemo((): boolean => {
    return status === "BOOK" && Boolean(user.pk);
  }, [status, user.pk]);

  return (
    <StyledDiv status={status}>
      <div className="reservation-container">
        <div className="img-area">
          <img src={img} />
        </div>
        <div className="info-area">
          <span className="play-date-time">{moment(playDateTime).format("YYYY-MM-DD  HH:mm")}</span>
          <h4>{title}</h4>
          <span className="bold">
            {storeName} · {totalVisitor}명
          </span>
        </div>
      </div>
      {canCancel ? <MypageStoreReservationCancelBtn bookId={id} /> : null}
      <MypageStoreReservationStatus status={status} />
    </StyledDiv>
  );
};

const StyledDiv = styled.div<{ status: TPlayStatus }>`
  position: relative;
  margin-bottom: 60px;

  &:hover {
    z-index: 1;
    transform: scale(1.1);
    transition: all ease 0.1s;
  }

  & > .reservation-container {
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    width: 100%;
    min-width: 272px;
    height: 240px;
    border-radius: 32px;
    background-color: ${({ theme }) => theme.colors.secondaryBg};
    ${({ theme }) => theme.shadow};
    margin-right: 32px;
    overflow: hidden;

    &::after {
      content: "";
      position: absolute;
      width: 100%;
      height: 100%;
      background-color: ${({ theme, status }) =>
        theme.colors.secondaryBg + (status !== "BOOK" ? "99" : "00")};
    }

    & > .img-area {
      width: 100%;
      height: 50%;
      overflow: hidden;
      position: relative;
      text-overflow: ellipsis;
      & > img {
        width: 100%;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
      }
    }
    & > .info-area {
      padding: 20px;

      & .play-date-time {
        font: ${({ theme }) => theme.fonts.tinyContent};
      }
      & h4 {
        margin-top: 4px;
        font: ${({ theme }) => theme.fonts.mainContentBold};
      }

      & .bold {
        font: ${({ theme }) => theme.fonts.subContentBold};
      }
    }
  }
`;

export default MypageStoreReservationItem;
