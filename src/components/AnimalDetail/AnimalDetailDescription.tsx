import React from "react";
import styled from "styled-components";
import { ISpeciesInfo } from "./type";

interface IProps {
  speciesInfo: ISpeciesInfo;
}

// 백엔드에 저장될 정보 정해지면 나머지 하기
const AnimalDetailDescription = function (props: IProps) {
  return (
    <StyledContainer>
      <StyledHeader>
        저는 <StyledColorHeader>{props.speciesInfo.classification}</StyledColorHeader>입니다.
      </StyledHeader>
      <StyledSpan>
        평균 수명은 <StyledBold>{props.speciesInfo.lifeSpan}년</StyledBold>이에요.
      </StyledSpan>
      <StyledSpan>
        주로 <StyledBold>{props.speciesInfo.habitat}</StyledBold>에 살아요.
      </StyledSpan>
      <StyledSpan>{props.speciesInfo.info}</StyledSpan>
    </StyledContainer>
  );
};

export default AnimalDetailDescription;

const StyledContainer = styled.div`
  width: 100%;
  display: flex;
  flex-direction: column;
  color: ${(props) => props.theme.colors.primaryText};
  gap: 16px;
`;

const StyledHeader = styled.div`
  font: ${(props) => props.theme.fonts.mainContentBold};
  font-size: 32px;
`;

const StyledColorHeader = styled.span`
  color: ${(props) => props.theme.colors.green};
`;

const StyledSpan = styled.span`
  font: ${(props) => props.theme.fonts.mainContent};
  font-size: 24px;
  white-space: pre-line;
`;

const StyledBold = styled.span`
  font: ${(props) => props.theme.fonts.mainContentBold};
  font-size: 24px;
`;